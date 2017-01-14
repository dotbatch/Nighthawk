/**
 * Conductor Widget - WooCommerce Add-on
 */
var conductor = conductor || {};

( function ( $ ) {
	"use strict";

	// Defaults

	// Extend Conductor Widget Backbone Views
	conductor.widgets.conductor.views = $.extend( conductor.widgets.conductor.views, {
		output_woocommerce_custom_fields: Backbone.View.extend( {
			el: '.conductor-output',
			$widget: false,
			$custom_fields: false,
			widget_output_view: false,
			widget_output_custom_fields_view: false,
			autocomplete_flag: false, // Used to determine when autocomplete events occur
			cf_label_prefix: 'WooCommerce: ', // Includes the space
			initialize: function() {
				var self = this, source = false;

				// Bind "this" to all functions/callbacks
				_.bindAll( this,
					'autocompleteSelect',
					'getAutoCompleteFlag',
					'setAutoCompleteFlag',
					'newModel',
					'destroy' );

				// Store a reference to the widget
				this.$widget = this.$el.parents( '.widget' );

				// Store a reference to the "output" view
				this.widget_output_view = this.$widget.data( 'conductor-output' );

				// Store a reference to the custom fields input box
				this.$custom_fields = this.$el.find( '.conductor-widget-custom-fields' );

				// Store a reference to the "custom fields" view
				this.widget_output_custom_fields_view = this.$widget.data( 'conductor-output-custom-fields' );

				/*
				 * jQuery Autocomplete
				 */
				this.$custom_fields.on( 'autocompleteselect', this.autocompleteSelect );

				/*
				 * listenTo
				 */
				this.listenTo( this.widget_output_view.collection, 'add', this.newModel );
			},
			// jQuery Autocomplete select callback
			autocompleteSelect: function( event, ui ) {
				// Set the auto-complete flag
				this.setAutoCompleteFlag( ui.item.value );

				return false;
			},
			// Get the auto-complete flag (used for adjusting output element properties)
			getAutoCompleteFlag: function() {
				return this.autocomplete_flag;
			},
			// Set the auto-complete flag (used for adjusting output element properties)
			setAutoCompleteFlag: function( val ) {
				this.autocomplete_flag = val;
			},
			// When a new model has been added to the output list on the Conductor widget
			newModel: function( model ) {
				var self = this, original_cf = [], original_cf_index = -1, cf_label = false, $el = false, priority = false,
					$conductor_output_data = self.widget_output_view.$el.find( '.conductor-output-data' );

				// Only on custom fields that were just added via auto-complete
				if ( model.get( 'type' ) === 'custom_field' && model.get( 'id' ) === self.getAutoCompleteFlag() ) {
					original_cf_index = conductor.widgets.conductor.custom_fields.map( function( cf ) { return ( cf.label.indexOf( self.cf_label_prefix ) !== -1 ) ? cf.value : false;  } ).indexOf( model.get( 'id' ) );

					// Only WooCommerce custom fields
					if ( original_cf_index !== -1 ) {
						original_cf = conductor.widgets.conductor.custom_fields[original_cf_index];
						cf_label = original_cf.label.replace( self.cf_label_prefix, '' ); // Replace WooCommerce the prefix
						$el = this.widget_output_view.$output_list_items.last();
						priority = model.get( 'priority' );

						// Adjust the model label in the model
						model.set( 'label', cf_label );

						// Adjust the label in the output elements
						$el.attr( 'data-label', cf_label );
						$el.find( '.label' ).html( cf_label );
						$el.find( '.conductor-widget-output-element-label-input input' ).attr( 'data-current', cf_label ).val( cf_label );

						// Reset the auto-complete flag
						self.setAutoCompleteFlag( false );

						// We have to hook in after the data was updated here to ensure we have the updated labels within data, otherwise the original event over-writes the updated data
						$conductor_output_data.on( 'change.conductor-woocommerce-custom-fields', function() {
							// Parse the data
							var data = JSON.parse( $conductor_output_data.val() ),
								model = data[priority]; // Find the last element in the data set

							// Adjust the label in the data set
							model.label = cf_label;

							// Reset the data
							$conductor_output_data.val( JSON.stringify( data ) );

							// Remove this event handler
							$conductor_output_data.off( 'change.conductor-woocommerce-custom-fields' );
						} );
					}
				}
			},
			// Completely destroy this view and all event handlers
			destroy: function() {
				this.undelegateEvents();
				this.remove();
			}
		} )
	} );


	/**
	 * Document Ready
	 */
	$( function() {
		var $widgets = $( '.widget', '#widgets-right' );

		/*
		 * Custom Fields
		 */

		// Initialize Backbone Views on Conductor Widgets (on initial page load)
		$widgets.filter( '[id*="conductor-widget"]' ).each( function( i, el ) {
			// Create a new output view and store it in widget data
			$( el ).data( 'conductor-output-woocommerce-custom-fields', new conductor.widgets.conductor.views.output_woocommerce_custom_fields( {
				el: $( el ).find( '.conductor-output' ) // Attach this view to the widgets output list
			} ) );
		} );

		// Need to listen to the document for widget-added
		$( document ).on( 'widget-added', function( event, $widget ) {
			// Conductor Widgets
			if ( $widget.attr( 'id' ).indexOf( 'conductor-widget' ) !== -1 ) {
				// Store the output view in widget data
				$widget.data( 'conductor-output-woocommerce-custom-fields', new conductor.widgets.conductor.views.output_woocommerce_custom_fields( {
					el: $widget.find( '.conductor-output' ) // Attach this view to the widgets output list
				} ) );
			}
		} );

		// Need to listen to the document for widget-updated
		$( document ).on( 'widget-updated', function( event, $widget ) {
			var conductor_output_view = $widget.data( 'conductor-output-woocommerce-custom-fields' );

			// Only on Conductor widgets
			if ( conductor_output_view && conductor_output_view instanceof Backbone.View ) {
				// Destroy the current view (custom function to undelegateEvents prior to removal)
				conductor_output_view.destroy();

				// Store the new view in widget data
				$widget.data( 'conductor-output-woocommerce-custom-fields', new conductor.widgets.conductor.views.output_woocommerce_custom_fields( {
					el: $widget.find( '.conductor-output' ) // Attach this view to the widgets output list
				} ) );
			}
		} );
	} );
}( jQuery ) );