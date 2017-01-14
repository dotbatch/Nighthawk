<?php
class wpsm_ac_sh_accordion {
	private static $instance;
    public static function forge() {
        if (!isset(self::$instance)) {
            $className = __CLASS__;
            self::$instance = new $className;
        }
        return self::$instance;
    }
	
	private function __construct() {
		
		add_action('admin_enqueue_scripts', array(&$this, 'wpsm_accordion_shortcode_admin_scripts'));
        if (is_admin()) {
			add_action('init', array(&$this, 'accordion_shortcode_cpt_register'), 1);
			add_action('add_meta_boxes', array(&$this, 'wpsm_accordion_shortcode_meta_boxes_group'));
			add_action('admin_init', array(&$this, 'wpsm_accordion_shortcode_meta_boxes_group'), 1);
			add_action('save_post', array(&$this, 'add_accordion_shortcode_meta_box_save'), 9, 1);
			add_action('save_post', array(&$this, 'accordion_shortcode_settings_meta_box_save'), 9, 1);
			
			
		}
    }
	// admin scripts
	public function wpsm_accordion_shortcode_admin_scripts(){
		if(get_post_type()=="accordion_shortcode"){
			
			wp_enqueue_media();
			
			wp_enqueue_script('jquery-ui-datepicker');
			//color-picker css n js
			wp_enqueue_style( 'wp-color-picker' );
			wp_enqueue_script( 'wpsm_ac_sh-color-pic', wpshopmart_accordion_shortcode_directory_url.'js/color-picker.js', array( 'wp-color-picker' ), false, true );
			 wp_enqueue_style('wpsm_ac_sh-panel-style', wpshopmart_accordion_shortcode_directory_url.'css/panel-style.css');
			  
			wp_enqueue_style('wpsm_ac_sh_remodal-css', wpshopmart_accordion_shortcode_directory_url .'modal/remodal.css');
			wp_enqueue_style('wpsm_ac_sh_remodal-default-theme-css', wpshopmart_accordion_shortcode_directory_url .'modal/remodal-default-theme.css');
			
			 
			//font awesome css
			wp_enqueue_style('wpsm_ac_sh-font-awesome', wpshopmart_accordion_shortcode_directory_url.'css/font-awesome/css/font-awesome.min.css');
			wp_enqueue_style('wpsm_ac_sh_bootstrap', wpshopmart_accordion_shortcode_directory_url.'css/bootstrap.css');
			wp_enqueue_style('wpsm_ac_sh_font-awesome-picker', wpshopmart_accordion_shortcode_directory_url.'css/fontawesome-iconpicker.css');
			wp_enqueue_style('ac_sh_jquery-css', wpshopmart_accordion_shortcode_directory_url .'css/ac_jquery-ui.css');
			
			//line editor
			wp_enqueue_style('wpsm_ac_sh_line-edtor', wpshopmart_accordion_shortcode_directory_url.'css/jquery-linedtextarea.css');
			wp_enqueue_script( 'wpsm_ac_sh-line-edit-js', wpshopmart_accordion_shortcode_directory_url.'js/jquery-linedtextarea.js');
			
			wp_enqueue_script( 'wpsm_ac_bootstrap-js', wpshopmart_accordion_shortcode_directory_url.'js/bootstrap.js');
			
			//tooltip
			wp_enqueue_style('wpsm_ac_sh_tooltip', wpshopmart_accordion_shortcode_directory_url.'tooltip/darktooltip.css');
			wp_enqueue_script( 'wpsm_ac_sh-tooltip-js', wpshopmart_accordion_shortcode_directory_url.'tooltip/jquery.darktooltip.js');
			// settings
			wp_enqueue_style('wpsm_ac_sh_settings-css', wpshopmart_accordion_shortcode_directory_url.'css/settings.css');
			
		
		
			wp_enqueue_script('ac_sh_font-icon-picker-js',wpshopmart_accordion_shortcode_directory_url.'js/fontawesome-iconpicker.js',array('jquery'));
			wp_enqueue_script('ac_sh_call-icon-picker-js',wpshopmart_accordion_shortcode_directory_url.'js/call-icon-picker.js',array('jquery'), false, true);
			
			wp_enqueue_script('ac_sh_remodal-min-js',wpshopmart_accordion_shortcode_directory_url.'modal/remodal.min.js',array('jquery'), false, true);
	
		
		}
	}
	
	
	// Register Custom Post Type
	public function accordion_shortcode_cpt_register() {
	  require_once('reg-cpt.php');

	}
	function accordion_shortcode_columns( $columns ){
        $columns = array(
            'cb' => '<input type="checkbox" />',
            'title' => __( 'Accordion' ),
            'shortcode' => __( 'Accordion Shortcode' ),
            'date' => __( 'Date' )
        );
        return $columns;
    }

    function accordion_shortcode_manage_columns( $column, $post_id ){
        global $post;
        switch( $column ) {
          case 'shortcode' :
            echo '<input type="text" value="[WPSM_AC_SH id='.$post_id.']" readonly="readonly" />';
            break;
          default :
            break;
        }
    }
	
	public function wpsm_accordion_shortcode_meta_boxes_group(){
		add_meta_box( __('add_accordion', wpshopmart_accordion_shortcode_text_domain), __('Add Accordion', wpshopmart_accordion_shortcode_text_domain), array(&$this, 'wpsm_add_ac_sh_meta_box_function'), 'Accordion_Shortcode', 'normal', 'low' );
		add_meta_box ( __('accordion_shortcode', wpshopmart_accordion_shortcode_text_domain), __('Get Accordion Shortcode', wpshopmart_accordion_shortcode_text_domain), array(&$this, 'wpsm_pic_ac_sh_shortcode'), 'Accordion_Shortcode', 'normal', 'low');
		add_meta_box('accordion_shortcode_follow', __('Follow Us', wpshopmart_accordion_shortcode_text_domain), array(&$this, 'wpsm_accordion_sh_follow_meta_box_function'), 'Accordion_Shortcode', 'side', 'low');
		add_meta_box('accordion_shortcode_rateus', __('Rate Us If You Like This Plugin', wpshopmart_accordion_shortcode_text_domain), array(&$this, 'wpsm_accordion_sh_rateus_meta_box_function'), 'Accordion_Shortcode', 'side', 'low');
	   add_meta_box( __('accordion_setting', wpshopmart_accordion_shortcode_text_domain), __('Accordion Settings', wpshopmart_accordion_shortcode_text_domain), array(&$this, 'wpsm_add_ac_sh_setting_meta_box_function'), 'Accordion_Shortcode', 'side', 'low');
		add_meta_box('accordion_designs', __('Accordion Design', wpshopmart_accordion_shortcode_text_domain), array(&$this, 'wpsm_add_ac_sh_designs_meta_box_function'), 'Accordion_Shortcode', 'normal', 'low');
	
	}
	
	public function wpsm_add_ac_sh_meta_box_function($post){
		require_once('add-acc.php');
	}
	
	public function wpsm_pic_ac_sh_shortcode(){
		
		?>
		<style>
		#accordion_shortcode{
		background:#fff!important;
		box-shadow: 0 0 20px rgba(0,0,0,.2);
		}
		#accordion_shortcode .hndle , #accordion_shortcode .handlediv{
		display:none;
		}
		#accordion_shortcode p{
		color:#000;
		font-size:15px;
		}
		#accordion_shortcode input {
		font-size: 16px;
		padding: 8px 10px;
		width:100%;
		}
		
		
		
		</style>
		<h3>Accordion Shortcode</h3>
		<p><?php _e("Use below shortcode in any Page/Post to publish your Accordion", wpshopmart_accordion_shortcode_text_domain);?></p>
		<input readonly="readonly" type="text" value="<?php echo "[WPSM_AC_SH id=".get_the_ID()."]"; ?>">
		<?php
		 $PostId = get_the_ID();
		$Accordion_Shortcode_Settings = unserialize(get_post_meta( $PostId, 'Accordion_Shortcode_Settings', true));
		if($Accordion_Shortcode_Settings['acc_sec_title'] && $Accordion_Shortcode_Settings['op_cl_icon']) {  
			 $custom_css     = $Accordion_Shortcode_Settings['custom_css'];
		}
		else{
		$custom_css="";
		}		
		
		?>
		<br><br>
		<div>
			<h3>To activate widget into any widget area</H3>
			<p><a href="<?php get_site_url();?>./widgets.php" >Click Here</a>. </p>
			<p>Find <b>Accordion Widget </b> and place it to your widget area. Select any Accordion from the list and then save changes.</p>
		</div>	
		<br>
		<h3>Custom Css</h3>
		<textarea name="custom_css" id="custom_css" style="width:100% !important ;height:300px;background:#ECECEC;"><?php echo $custom_css ; ?></textarea>
		<p>Enter Css without <strong>&lt;style&gt; &lt;/style&gt; </strong> tag</p>
		
		<?php 
	}
	
	public function wpsm_add_ac_sh_designs_meta_box_function(){
		?>
			<h1>Accordion Pro Designs</h1>
			<div style="overflow:hidden;display:block;width:100%;padding-top:20px">
				<?php for($i=1;$i<=8;$i++){ 
				if($i==1){
					$var = "Selected";
					
				}
				else{
					$var = "Available In Pro";
				}
				?>
				<div class="col-md-3">
					<div class="demoftr">	
						
						<div class="">
							<div class="wpsm_home_portfolio_showcase">
								<div class="wpsm_ribbon"><a target="_blank" href="http://wpshopmart.com/plugins/accordion-pro/"><span><?php echo $var; ?></span></a></div>
								<img class="wpsm_img_responsive ftr_img" src="<?php echo wpshopmart_accordion_shortcode_directory_url.'img/design/accordion-'.$i.'.png'?>">
								</div>
						</div>
						<div style="padding:13px;overflow:hidden; background: #EFEFEF; border-top: 1px dashed #ccc;">
							<h3 class="text-center pull-left" style="margin-top: 10px;margin-bottom: 10px;font-weight:900">Design <?php echo $i; ?></h3>
							<a type="button"  class="pull-right btn btn-danger design_btn" id="templates_btn<?php echo $i; ?>" target="_blank" href="http://demo.wpshopmart.com/accordion-pro/accordion-template-<?php echo $i; ?>/" >Check Demo</a>
								</div>		
					</div>	
				</div>
				<?php } ?>
				<a class="btn btn-success btn-lg " href="http://wpshopmart.com/plugins/accordion-pro/" target="_blank">Get Accordion Pro Only In $6</a>
			</div>
		
		<?php
	}
	public function wpsm_accordion_sh_follow_meta_box_function(){
		?>
		<style>
		.follow_icon li {   
			margin-right: 8px;
			margin-left: 8px;
			font-size: 20px;
			display: inline-block;
			width:40px;
			height:40px;
			text-align:center;
			line-height: 38px;
		}
		.follow_icon li a {
			color:#fff;
		}
		
		</style>
		<ul class="follow_icon">
			<li  style="background: rgb(59, 89, 152);">
				<a href="https://www.facebook.com/wpshopmart/" target="_blank"><i class="fa fa-facebook"></i></a>
			</li>
			<li  style="background: rgb(0, 172, 237);">
				<a href="https://twitter.com/wpshopmart1" target="_blank"><i class="fa fa-twitter"></i></a>
			</li>
			<li  style="background: rgb(196, 50, 32);">
				<a href="https://plus.google.com/u/0/108719707535083220625" target="_blank"><i class="fa fa-google-plus"></i></a>
			</li>
			<li  style="background: rgb(178, 7, 14)">
				<a href="https://www.youtube.com/channel/UCkXM_n1r869EVpAaatHnXcw" target="_blank"><i class="fa fa-youtube"></i></a>
			</li>
		</ul>
		
		<?php
	}
	public function wpsm_accordion_sh_rateus_meta_box_function(){
	
	?>
	<style>
		#accordion_shortcode_rateus{
			background:url(<?php echo wpshopmart_accordion_shortcode_directory_url.'img/rate-bg.jpg'; ?>)!important;
			}
			#accordion_shortcode_rateus .hndle , #accordion_shortcode_rateus .handlediv{
			display:none;
			}
			#accordion_shortcode_rateus h1{
			color:#fff;
			
			}
			 #accordion_shortcode_rateus h3 {
			color:#fff;
			font-size:15px;
			}
			#accordion_shortcode_rateus .button-hero{
			display:block;
			text-align:center;
			margin-bottom:15px;
			}
			.wpsm-rate-us{
			text-align:center;
			}
			.wpsm-rate-us span.dashicons {
				width: 40px;
				height: 40px;
				font-size:20px;
				color : #ffffff !important;
			}
			.wpsm-rate-us span.dashicons-star-filled:before {
				content: "\f155";
				font-size: 40px;
			}
		</style>
		   <h1>Rate Us </h1>
			<h3>Show us some love, If you like our product then please give us some valuable feedback on wordpress</h3>
			<a href="https://wordpress.org/plugins/accordion-shortcode-and-widget" target="_blank" class="button button-primary button-hero ">RATE HERE</a>
			<a class="wpsm-rate-us" style=" text-decoration: none; height: 40px; width: 40px;" href="https://wordpress.org/plugins/accordion-shortcode-and-widget" target="_blank">
				<span class="dashicons dashicons-star-filled"></span>
				<span class="dashicons dashicons-star-filled"></span>
				<span class="dashicons dashicons-star-filled"></span>
				<span class="dashicons dashicons-star-filled"></span>
				<span class="dashicons dashicons-star-filled"></span>
			</a>
			<?php
	}
	
	public function wpsm_add_ac_sh_setting_meta_box_function($post){
		require_once('settings.php');
	}
	
	public function add_accordion_shortcode_meta_box_save($PostID) {
		require('data-post/ac-save-data.php');
    }
	
	public function accordion_shortcode_settings_meta_box_save($PostID){
		require('data-post/ac-settings-save-data.php');
	}


} 
 
global $wpsm_ac_sh_accordion;
$wpsm_ac_sh_accordion = wpsm_ac_sh_accordion::forge();

 ?>