<?php
/**
 * Conductor HTML Genesis - Functionality used to enhance/modify the Conductor Widget.
 *
 * @class Conductor_HTML_Genesis
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

// Bail if accessed directly
if ( ! defined( 'ABSPATH' ) )
	exit;

if( ! class_exists( 'Conductor_HTML_Genesis' ) ) {
	class Conductor_HTML_Genesis {
		/**
		 * @var string
		 */
		public $version = '1.0.0';

		/**
		 * @var Conductor, Instance of the class
		 */
		protected static $_instance;

		/**
		 * Function used to create instance of class.
		 */
		public static function instance() {
			if ( is_null( self::$_instance ) )
				self::$_instance = new self();

			return self::$_instance;
		}

		/**
		 * This function sets up all of the actions and filters on instance. It also loads (includes)
		 * the required files and assets.
		 */
		function __construct() {
			// Genesis
			add_filter( 'genesis_attr_content-sidebar-wrap', array( $this, 'genesis_attr_content_sidebar_wrap' ) ); // Genesis content-sidebar-wrap attribute
			add_filter( 'genesis_attr_content', array( $this, 'genesis_attr_content' ) ); // Genesis content attribute
			add_filter( 'genesis_attr_sidebar-primary', array( $this, 'genesis_attr_sidebar_primary' ) ); // Genesis sidebar-primary attribute
			add_filter( 'genesis_attr_sidebar-secondary', array( $this, 'genesis_attr_sidebar_secondary' ) ); // Genesis sidebar-secondary attribute

			// HTML
			add_filter( 'conductor_content_wrapper_element_before', array( $this, 'conductor_content_wrapper_element_before' ) );
			add_filter( 'conductor_widget_wrapper_html_element', array( $this, 'conductor_widget_wrapper_html_element' ), 20, 5 ); // Changes Wrapper html element e.g. div, article etc
			add_filter( 'conductor_content_element_before', array( $this, 'conductor_content_element_before' ) );
			add_filter( 'conductor_content_element_after', array( $this, 'conductor_content_element_after' ) );
			add_filter( 'conductor_widget_content_wrapper_html_element', array( $this, 'conductor_widget_content_wrapper_html_element' ), 20, 5 );
			add_filter( 'conductor_content_wrapper_element_after', array( $this, 'conductor_content_wrapper_element_after' ) );
			add_filter( 'conductor_widget_content_wrapper_css_classes', array( $this, 'conductor_widget_content_wrapper_css_classes' ), 20, 5 );

			// Primary Sidebar
			add_filter( 'conductor_primary_sidebar_element_before', array( $this, 'conductor_primary_sidebar_element_before' ) );
			add_filter( 'conductor_primary_sidebar_element_after', array( $this, 'conductor_primary_sidebar_element_after' ) );
			
			// Secondary Sidebar
			add_filter( 'conductor_secondary_sidebar_element_before', array( $this, 'conductor_secondary_sidebar_element_before' ) );
			add_filter( 'conductor_secondary_sidebar_element_after', array( $this, 'conductor_secondary_sidebar_element_after' ) );
		}

		/**
		 * This function adds Conductor CSS classes to the Genesis content-sidebar-wrap CSS class attribute.
		 */
		function genesis_attr_content_sidebar_wrap( $attributes ) {
			// Conductor
			if ( Conductor::is_conductor() )
				// CSS Class
				if ( isset( $attributes['class'] ) && Conductor::is_conductor() )
					// Add Conductor content wrapper CSS classes
					$attributes['class'] .= ' conductor-container container conductor-cf';

			return $attributes;
		}

		/**
		 * This function adds Conductor CSS classes to the Genesis content CSS class attribute.
		 */
		function genesis_attr_content( $attributes ) {
			// Conductor
			if ( Conductor::is_conductor() ) {
				// CSS Class
				if ( isset( $attributes['class'] ) )
					// Add Conductor content wrapper CSS classes
					$attributes['class'] .= ' conductor-content conductor-cf ' . Conductor::get_conductor_content_layout_sidebar_id( 'content' );

				// Data Sidebar ID
				$attributes['data-sidebar-id'] = Conductor::get_conductor_content_layout_sidebar_id( 'content' );
			}

			return $attributes;
		}

		/**
		 * This function adds Conductor CSS classes to the Genesis sidebar-primary CSS class attribute.
		 */
		function genesis_attr_sidebar_primary( $attributes ) {
			// Conductor
			if ( Conductor::is_conductor() ) {
				// CSS Class
				if ( isset( $attributes['class'] ) )
					// Add Conductor content wrapper CSS classes
					$attributes['class'] .= ' conductor-primary-sidebar conductor-sidebar conductor-cf ' . Conductor::get_conductor_content_layout_sidebar_id( 'primary' );

				// Data Sidebar ID
				$attributes['data-sidebar-id'] = Conductor::get_conductor_content_layout_sidebar_id( 'primary' );
			}

			return $attributes;
		}

		/**
		 * This function adds Conductor CSS classes to the Genesis sidebar-secondary CSS class attribute.
		 */
		function genesis_attr_sidebar_secondary( $attributes ) {
			// Conductor
			if ( Conductor::is_conductor() ) {
				// CSS Class
				if ( isset( $attributes['class'] ) )
					// Add Conductor content wrapper CSS classes
					$attributes['class'] .= ' conductor-secondary-sidebar conductor-sidebar conductor-cf ' . Conductor::get_conductor_content_layout_sidebar_id( 'secondary' );

				// Data Sidebar ID
				$attributes['data-sidebar-id'] = Conductor::get_conductor_content_layout_sidebar_id( 'secondary' );
			}

			return $attributes;
		}


		/**
		 * Make post an html element article
		 *
		 * @param $element
		 * @param $post
		 * @param $instance
		 * @param $widget
		 * @param $query
		 *
		 * @return string
		 */
		public function conductor_widget_wrapper_html_element( $element, $post, $instance, $widget, $query ) {
			return 'article';
		}

		/**
		 * Add class content
		 * Remove conductor-content and conductor-inner element
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_content_element_before( $html ) {
			// Genesis content wrapper
			$html = genesis_markup( array(
				'html5'   => '<main %s>',
				'xhtml'   => '<div id="content" class="hfeed">',
				'context' => 'content',
				'echo'	  => false
			) );

			// Conductor Inner
			$html .= '<div class="conductor-inner conductor-cf">';

			// Conductor default template
			if ( ! conductor_is_active_sidebar( 'content' ) )
				$html .= '<div class="entry conductor-default">';

			return $html;
		}

		/**
		 * Remove closing div of conductor inner element in $this->conductor_content_element_before()
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_content_element_after( $html ) {
			$html = '';

			// Conductor default template
			if ( ! conductor_is_active_sidebar( 'content' ) )
				$html = '</div>';

			$html .= genesis_markup( array(
				'html5' => '<div class="conductor-cf conductor-clear"></div></div></main>', //* end .content
				'xhtml' => '<div class="conductor-cf conductor-clear"></div></div></div>', //* end #content
				'echo'  => false
			) );

			return $html;
		}

		/**
		 * Replaces the existing Conductor div tag wrapper with Genesis classes
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_content_wrapper_element_before( $html ) {
			// Genesis content wrap wrapper
			$html = genesis_markup( array(
				'html5'   => '<div %s>',
				'xhtml'   => '<div id="content-sidebar-wrap">',
				'context' => 'content-sidebar-wrap',
				'echo'	  => false
			) );

			return $html;
		}

		/**
		 * Sets the Conductor widget element
		 *
		 * @param $element
		 * @param $post
		 * @param $instance
		 * @param $widget
		 * @param $query
		 *
		 * @return string
		 */
		public function conductor_widget_content_wrapper_html_element( $element, $post, $instance, $widget, $query ) {
			return 'div';
		}


		/**
		 * Replaces the existing Conductor div tag wrapper with Genesis classes
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_content_wrapper_element_after( $html ) {
			// Grab Conductor content layout
			$content_layout = Conductor::get_conductor_content_layout();

			// Skip the closing wrapper on 3 column content layouts (it is closed in conductor_primary_sidebar_element_after())
			if ( strpos( $content_layout['value'], 'cols-3' ) !== false )
				$html = '';

			return $html;
		}

		/**
		 * Removes content class from the widget content wrapper class
		 *
		 * @param $classes
		 * @param $post
		 * @param $instance
		 * @param $widget
		 * @param $query
		 *
		 * @return string
		 */
		public function conductor_widget_content_wrapper_css_classes( $classes, $post, $instance, $widget, $query ) {
			$new_classes = 'post-content conductor-cf';

			return $new_classes;
		}

		/**
		 * Primary Sidebar HTML before
		 *
		 * Adds Class sidebar and sidebar-primary
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_primary_sidebar_element_before( $html ) {
			$html = genesis_markup( array(
				'html5'   => '<aside %s>',
				'xhtml'   => '<div id="sidebar" class="sidebar widget-area">',
				'context' => 'sidebar-primary',
				'echo'	  => false
			) );

			// Conductor Inner
			$html .= '<div class="conductor-inner conductor-cf">';

			// Conductor default template
			if ( ! conductor_is_active_sidebar( 'primary' ) )
				$html .= '<section class="widget conductor-default">';

			return $html;
		}

		/**
		 * Primary Sidebar HTML after
		 *
		 * Adds Class sidebar and sidebar-primary
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_primary_sidebar_element_after( $html ) {
			$html = '';

			// Conductor default template
			if ( ! conductor_is_active_sidebar( 'primary' ) )
				$html = '</section>';

			$html .= genesis_markup( array(
				'html5' => '</div></aside>', //* end .sidebar-primary
				'xhtml' => '</div></div>', //* end #sidebar
			) );

			// Grab Conductor content layout
			$content_layout = Conductor::get_conductor_content_layout();

			// Output the closing wrapper on 3 column content layouts
			if ( strpos( $content_layout['value'], 'cols-3' ) !== false )
				$html .= '<div class="conductor-cf conductor-clear"></div></div>';

			return $html;
		}

		/**
		 * Secondary Sidebar HTML before
		 *
		 * Adds a closing div at the start to close off the .content-sidebar-wrap
		 * Adds sidebar and sidebar-secondary
		 * Removes conductor-secondary-sidebar
		 * Removes conductor-inner and conductor-cf
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_secondary_sidebar_element_before( $html ) {
			$html = genesis_markup( array(
				'html5'   => '<aside %s>',
				'xhtml'   => '<div id="sidebar-alt" class="sidebar widget-area">',
				'context' => 'sidebar-secondary',
				'echo'	  => false
			) );

			// Conductor Inner
			$html .= '<div class="conductor-inner conductor-cf">';

			// Conductor default template
			if ( ! conductor_is_active_sidebar( 'secondary' ) )
				$html .= '<section class="widget conductor-default">';

			return $html;
		}

		/**
		 * Secondary Sidebar HTML after
		 *
		 * Adds Class sidebar and sidebar-primary
		 *
		 * @param $html
		 *
		 * @return string
		 */
		public function conductor_secondary_sidebar_element_after( $html ) {
			$html = '';

			// Conductor default template
			if ( ! conductor_is_active_sidebar( 'secondary' ) )
				$html = '</section>';

			$html .= genesis_markup( array(
				'html5' => '</div></aside>', //* end .sidebar-secondary
				'xhtml' => '</div></div>', //* end #sidebar-alt
			) );

			return $html;
		}
	}
}

/**
 * Create an instance of the Conductor_HTML_Genesis class.
 */
function Conduct_HTML_Genesis() {
	return Conductor_HTML_Genesis::instance();
}

Conduct_HTML_Genesis(); // Conduct your content!