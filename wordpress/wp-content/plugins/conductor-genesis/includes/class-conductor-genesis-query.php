<?php
/**
 * Conductor Layout Genesis - Uses the layout chosen in conductor but by using Genesis layouts.
 *
 * @class Conductor_Hooks_Genesis
 * @author Slocum Studio
 * @version 1.0.0
 * @since 0.0.1
 */

if ( ! class_exists( 'Conductor_Genesis_Query' ) ) {
	class Conductor_Genesis_Query extends Conductor_Widget_Default_Query {
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
		public function __construct( $args = array() ) {
			// Parent Constructor
			parent::__construct( $args );

			// If we have a widget instance
			if ( ! empty ( $this->widget_instance ) ) {
				// Hooks
				add_action( 'conductor_widget_display_content_' . $this->widget->number, array( $this, 'maybe_remove_genesis_post_class' ), 0, $this->display_content_args_count ); // Maybe remove Genesis post_class filter
				add_action( 'conductor_widget_display_content_' . $this->widget->number, array( $this, 'maybe_add_genesis_post_class' ), 10000, $this->display_content_args_count ); // Maybe add Genesis post_class filter

				$this->hooks['conductor_widget_display_content_' . $this->widget->number] += array(
					0 => array( get_class(), 'maybe_remove_genesis_post_class' ), // Static callback
					10000 => array( get_class(), 'maybe_add_genesis_post_class' ) // Static callback
				);
			}
		}

		/**
		 * This function returns or will echo pagination for a query depending on parameters.
		 * This function is a copy of the Genesis method genesis_numeric_posts_nav() structure/post.php line 658
		 * because the output is not filterable as of 03/16/15.
		 *
		 * @param bool $query
		 * @param bool $echo
		 */
		public function get_pagination_links( $query = false, $echo = true ) {
			if ( empty ( $query ) )
				$query = $this->get_query();

			//* Stop execution if there's only 1 page
			if( $query->max_num_pages <= 1 )
				return;

			$paged = get_query_var( 'paged' ) ? absint( get_query_var( 'paged' ) ) : 1;
			$max   = intval( $query->max_num_pages );

			//* Add current page to the array
			if ( $paged >= 1 )
				$links[] = $paged;

			//* Add the pages around the current page to the array
			if ( $paged >= 3 ) {
				$links[] = $paged - 1;
				$links[] = $paged - 2;
			}

			if ( ( $paged + 2 ) <= $max ) {
				$links[] = $paged + 2;
				$links[] = $paged + 1;
			}

			genesis_markup( array(
				'html5'   => '<div %s>',
				'xhtml'   => '<div class="navigation">',
				'context' => 'archive-pagination',
			) );

			echo '<ul>';

			//* Previous Post Link
			if ( get_previous_posts_link() )
				printf( '<li class="pagination-previous">%s</li>' . "\n", get_previous_posts_link( apply_filters( 'genesis_prev_link_text', '&#x000AB;' . __( 'Previous Page', 'genesis' ) ) ) );

			//* Link to first page, plus ellipses if necessary
			if ( ! in_array( 1, $links ) ) {

				$class = 1 == $paged ? ' class="active"' : '';

				printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( 1 ) ), '1' );

				if ( ! in_array( 2, $links ) )
					echo '<li class="pagination-omission">&#x02026;</li>';

			}

			//* Link to current page, plus 2 pages in either direction if necessary
			sort( $links );
			foreach ( (array) $links as $link ) {
				$class = $paged == $link ? ' class="active"' : '';
				printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $link ) ), $link );
			}

			//* Link to last page, plus ellipses if necessary
			if ( ! in_array( $max, $links ) ) {

				if ( ! in_array( $max - 1, $links ) )
					echo '<li class="pagination-omission">&#x02026;</li>' . "\n";

				$class = $paged == $max ? ' class="active"' : '';
				printf( '<li%s><a href="%s">%s</a></li>' . "\n", $class, esc_url( get_pagenum_link( $max ) ), $max );

			}

			//* Next Post Link
			if ( get_next_posts_link() )
				printf( '<li class="pagination-next">%s</li>' . "\n", get_next_posts_link( apply_filters( 'genesis_next_link_text', __( 'Next Page', 'genesis' ) . '&#x000BB;' ) ) );

			echo '</ul></div>' . "\n";
		}

		/**
		 * This function determines whether or not to remove the Genesis post_class filter. It looks
		 * to see if the current Conductor Widget is not in the Conductor "content" sidebar.
		 */
		public function maybe_remove_genesis_post_class( $post, $instance, $widget, $query ) {
			$sidebars_widgets = wp_get_sidebars_widgets();
			$conductor_content_sidebar_id = Conductor::get_conductor_content_layout_sidebar_id( 'content' );

			// Conductor only
			if ( Conductor::is_conductor() && isset( $sidebars_widgets[$conductor_content_sidebar_id] ) )
				// Make sure this widget isn't part of the Conductor content sidebar
				if ( ! in_array( $widget->id, $sidebars_widgets[$conductor_content_sidebar_id] ) )
					remove_filter( 'post_class', 'genesis_entry_post_class' );
		}

		/**
		 * This function determines whether or not to add the Genesis post_class filter. It looks
		 * to see if the current Conductor Widget is not in the Conductor "content" sidebar.
		 */
		public function maybe_add_genesis_post_class( $post, $instance, $widget, $query ) {
			$sidebars_widgets = wp_get_sidebars_widgets();
			$conductor_content_sidebar_id = Conductor::get_conductor_content_layout_sidebar_id( 'content' );

			// Conductor only
			if ( Conductor::is_conductor() && isset( $sidebars_widgets[$conductor_content_sidebar_id] ) )
				// Make sure this widget isn't part of the Conductor content sidebar
				if ( ! in_array( $widget->id, $sidebars_widgets[$conductor_content_sidebar_id] ) )
					add_filter( 'post_class', 'genesis_entry_post_class' );
		}

		/**
		 * This function filters Genesis post title output on Conductor Widgets only.
		 */
		function genesis_post_title_output( $output ) {
			// Make sure we have a widget instance
			if ( $this->widget_instance ) {
				// Find the post title output element data
				$priority = $this->widget_instance['output_elements']['post_title'];
				$post_title_output = $this->widget_instance['output'][$priority];
				$link = ( $post_title_output['link'] ) ? true : false;
				$title = get_the_title();

				// Singular post with links (Genesis genesis_do_post_title doesn't add links on singular pages)
				if ( is_singular() && $link ) {
					//* Link it, if necessary
					if ( apply_filters( 'genesis_link_post_title', true ) )
						$title = sprintf( '<a href="%s" rel="bookmark">%s</a>', get_permalink(), $title );

					//* Wrap in H1 on singular pages
					$wrap = is_singular() ? 'h1' : 'h2';

					//* Also, if HTML5 with semantic headings, wrap in H1
					$wrap = genesis_html5() && genesis_get_seo_option( 'semantic_headings' ) ? 'h1' : $wrap;

					//* Build the output
					$output = genesis_markup( array(
						'html5'   => "<{$wrap} %s>",
						'xhtml'   => sprintf( '<%s class="entry-title">%s</%s>', $wrap, $title, $wrap ),
						'context' => 'entry-title',
						'echo'    => false,
					) );

					$output .= genesis_html5() ? "{$title}</{$wrap}>" : '';
				}
				// Non-singular posts that aren't supposed to link
				else if ( ! is_singular() && ! $link ) {
					//* Wrap in H1 on singular pages
					$wrap = is_singular() ? 'h1' : 'h2';

					//* Also, if HTML5 with semantic headings, wrap in H1
					$wrap = genesis_html5() && genesis_get_seo_option( 'semantic_headings' ) ? 'h1' : $wrap;

					//* Build the output
					$output = genesis_markup( array(
						'html5'   => "<{$wrap} %s>",
						'xhtml'   => sprintf( '<%s class="entry-title">%s</%s>', $wrap, $title, $wrap ),
						'context' => 'entry-title',
						'echo'    => false,
					) );

					$output .= genesis_html5() ? "{$title}</{$wrap}>" : '';
				}
			}

			return $output;
		}


		/************************
		 * Output Functionality *
		 ************************/

		/**
		 * This function outputs the featured image for Conductor Widgets.
		 */
		public function conductor_widget_featured_image( $post, $instance, $widget, $query ) {
			// Find the featured image output element data
			$priority = $instance['output_elements']['featured_image'];
			$output = $instance['output'][$priority];

			do_action( 'conductor_widget_featured_image_before', $post, $instance );

			if ( has_post_thumbnail( $post->ID ) ) :
				// Output desired featured image size
				if ( ! empty( $instance['post_thumbnails_size'] ) )
					$conductor_thumbnail_size = $instance['post_thumbnails_size'];
				else
					$conductor_thumbnail_size = ( $instance['widget_size'] !== 'small' ) ? $instance['widget_size'] : 'thumbnail';

				$conductor_thumbnail_size = apply_filters( 'conductor_widget_featured_image_size', $conductor_thumbnail_size, $instance, $post );

				$img = genesis_get_image( array(
					'format'  => 'html',
					'size'    => $conductor_thumbnail_size,
					'context' => 'conductor',
					'attr'    => genesis_parse_attr( 'entry-image' ),
				) );

				// If we have an image
				if ( ! empty( $img ) ) :
					// Link featured image to post
					if ( $output['link'] )
						printf( '<a href="%s" title="%s">%s</a>', get_permalink(), the_title_attribute( 'echo=0' ), $img );
					// Just output the featured image
					else
						echo $img;
				?>
					<div class="conductor-clear"></div>
				<?php
				endif;
			endif;

			do_action( 'conductor_widget_featured_image_after', $post, $instance );
		}

		/**
		 * This function outputs the post title for Conductor Widgets. It contains logic to determine
		 * whether or not the author_byline should be wrapped in the entry header markup (if author
		 * byline appears directly after the post title.)
		 */
		public function conductor_widget_post_title( $post, $instance, $widget, $query ) {
			// Find the post title and author byline output element priority
			//$priority = $instance['output_elements']['post_title'];
			//$author_byline_priority = ( isset( $instance['output_elements']['author_byline'] ) ) ? $instance['output_elements']['author_byline'] : false;
			//$author_byline = ( $author_byline_priority !== false ) ? $instance['output'][$author_byline_priority] : array();

			// Genesis post title output filter
			add_filter( 'genesis_post_title_output', array( $this, 'genesis_post_title_output' ) );

			do_action( 'conductor_widget_post_title_before', $post, $instance );

			// Output Genesis markup open (assuming increments of 10)
			//if ( ! isset( $author_byline['visible'] ) || ! $author_byline['visible'] || ( $priority + 10 ) === $author_byline_priority || $priority < $author_byline_priority )
			genesis_entry_header_markup_open(); // Markup open

			genesis_do_post_title(); // Genesis post title

			// Output Genesis markup close (assuming increments of 10)
			//if ( ! isset( $author_byline['visible'] ) || ! $author_byline['visible'] || ( $priority + 10 ) !== $author_byline_priority || $priority > $author_byline_priority )
			genesis_entry_header_markup_close(); // Markup close


			do_action( 'conductor_widget_post_title_after', $post, $instance );

			// Remove Genesis post title output filter
			remove_filter( 'genesis_post_title_output', array( $this, 'genesis_post_title_output' ) );
		}

		/**
		 * This function outputs the author byline for Conductor Widgets. It contains logic to determine
		 * whether or not the author_byline should be wrapped in the entry header markup (if author
		 * byline appears directly after the post title.)
		 */
		public function conductor_widget_author_byline( $post, $instance, $widget, $query ) {
			// Find the author byline and post title output element priority
			//$priority = $instance['output_elements']['author_byline'];
			//$post_title_priority = ( isset( $instance['output_elements']['post_title'] ) ) ? $instance['output_elements']['post_title'] : false;
			//$post_title = ( $post_title_priority !== false ) ? $instance['output'][$post_title_priority] : array();

			do_action( 'conductor_widget_author_byline_before', $post, $instance );

			// Remove Genesis header markup open (assuming increments of 10)
			//if ( ! isset( $post_title['visible'] ) || ! $post_title['visible'] || ( $priority - 10 ) !== $post_title_priority || $priority < $post_title_priority )
			genesis_entry_header_markup_open(); // Markup open

			genesis_post_info(); // Genesis post info

			// Remove Genesis header markup close (assuming increments of 10)
			//if ( isset( $post_title['visible'] ) && $post_title['visible'] && ( $priority - 10 ) === $post_title_priority && $priority > $post_title_priority )
			genesis_entry_header_markup_close(); // Markup close

			do_action( 'conductor_widget_author_byline_after', $post, $instance );
		}

		/**
		 * This function outputs Display for the footer meta display setting
		 *
		 * @param $post
		 * @param $instance
		 * @param $widget
		 * @param $query
		 */
		public function conductor_widget_genesis_footer_meta( $post, $instance, $widget, $query ) {
			do_action( 'conductor_widget_genesis_footer_meta_before', $post, $instance );

			genesis_entry_footer_markup_open(); // Open markup

			genesis_post_meta(); // Genesis post meta

			genesis_entry_footer_markup_close(); // Close markup

			do_action( 'conductor_widget_genesis_footer_meta_after', $post, $instance );
		}
	}
}

/**
 * Create an instance of the Conductor_HTML_Genesis class.
 */
function Conduct_Genesis_Query() {
	return Conductor_Genesis_Query::instance();
}

Conduct_Genesis_Query(); // Conduct your content!