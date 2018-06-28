<aside class="main-sidebar">
  <section class="sidebar">
    <ul class="sidebar-menu">
      @if(Request::is('admin/dashboard'))
        <li class="active">
          <a href="{{ route('admin.dashboard') }}" class="active">
            <i class="fa fa-dashboard"></i> <span>{!! trans('admin.dashboard') !!}</span>
          </a>
        </li>
      @else
        <li>
          <a href="{{ route('admin.dashboard') }}">
            <i class="fa fa-dashboard"></i> <span>{!! trans('admin.dashboard') !!}</span>
          </a>
        </li>
      @endif
      
      @if(in_array('manage_pages', $user_permission_list))
        @if(Request::is('admin/pages/list') || Request::is('admin/page/add') || Request::is('admin/page/update/*'))
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-file"></i> <span>{!! trans('admin.page_menu_title') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(Request::is('admin/pages/list'))
                <li class="active"><a href="{{ route('admin.all_pages') }}"><i class="fa fa-table"></i> {!! trans('admin.all_pages_list') !!}</a></li>
              @else
                <li><a href="{{ route('admin.all_pages') }}"><i class="fa fa-table"></i> {!! trans('admin.all_pages_list') !!}</a></li>
              @endif

              @if(in_array('add_edit_delete_pages', $user_permission_list))
                @if(Request::is('admin/page/add') || Request::is('admin/page/update/*'))
                  <li class="active"><a href="{{route('admin.add_page')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_page') !!}</a></li>
                @else
                  <li><a href="{{route('admin.add_page')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_page') !!}</a></li>
                @endif
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-file"></i> <span>{!! trans('admin.page_menu_title') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.all_pages') }}"><i class="fa fa-table"></i> {!! trans('admin.all_pages_list') !!}</a></li>

              @if(in_array('add_edit_delete_pages', $user_permission_list))
                <li><a href="{{route('admin.add_page')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_page') !!}</a></li>
              @endif
            </ul>
          </li>
        @endif
      @endif
      
      @if(in_array('manage_blog_manager', $user_permission_list))
      
        @if(Request::is('admin/blog/list') || Request::is('admin/blog/add') || Request::is('admin/blog/comments-list') || Request::is('admin/blog/update/*') || Request::is('admin/blog/categories/list'))
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-commenting"></i> <span>{!! trans('admin.blog_manager') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">

              @if(in_array('all_blogs', $user_permission_list))
                @if(Request::is('admin/blog/list'))
                  <li class="active"><a href="{{ route('admin.all_blogs') }}"><i class="fa fa-table"></i> {!! trans('admin.posts_list') !!}</a></li>
                @else
                  <li><a href="{{ route('admin.all_blogs') }}"><i class="fa fa-table"></i> {!! trans('admin.posts_list') !!}</a></li>
                @endif
              @endif

              @if(in_array('add_edit_blog', $user_permission_list))
                @if(Request::is('admin/blog/add') || Request::is('admin/blog/update/*'))
                  <li class="active"><a href="{{route('admin.add_blog')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_post') !!}</a></li>
                @else
                  <li><a href="{{route('admin.add_blog')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_post') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('blog_categories', $user_permission_list))
                @if(Request::is('admin/blog/categories/list'))
                  <li class="active"><a href="{{route('admin.blog_categories_list')}}"><i class="fa fa-camera"></i> {!! trans('admin.categories') !!}</a></li>
                @else
                  <li><a href="{{route('admin.blog_categories_list')}}"><i class="fa fa-camera"></i> {!! trans('admin.categories') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('all_blog_comments', $user_permission_list))
                @if(Request::is('admin/blog/comments-list'))
                  <li class="active"><a href="{{route('admin.all_blog_comments')}}"><i class="fa fa-comment"></i> {!! trans('admin.blog_comments_list') !!}</a></li>
                @else
                  <li><a href="{{route('admin.all_blog_comments')}}"><i class="fa fa-comment"></i> {!! trans('admin.blog_comments_list') !!}</a></li>
                @endif
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa fa-commenting"></i> <span>{!! trans('admin.blog_manager') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(in_array('all_blogs', $user_permission_list))
                <li><a href="{{ route('admin.all_blogs') }}"><i class="fa fa-table"></i> {!! trans('admin.posts_list') !!}</a></li>
              @endif

              @if(in_array('add_edit_blog', $user_permission_list))
                <li><a href="{{route('admin.add_blog')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_post') !!}</a></li>
              @endif
              
              @if(in_array('blog_categories', $user_permission_list))
                <li><a href="{{route('admin.blog_categories_list')}}"><i class="fa fa-camera"></i> {!! trans('admin.categories') !!}</a></li>
              @endif
              
              @if(in_array('all_blog_comments', $user_permission_list))
                <li><a href="{{route('admin.all_blog_comments')}}"><i class="fa fa-comment"></i> {!! trans('admin.blog_comments_list') !!}</a></li>
              @endif
            </ul>
          </li>
        @endif
      
      @endif
      
      
      @if(in_array('manage_testimonial', $user_permission_list))
        @if(Request::is('admin/testimonial/add') || Request::is('admin/testimonial/list') || Request::is('admin/testimonial/update/*') )
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-thumbs-o-up"></i> <span>{!! trans('admin.testimonial_menu_title') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(in_array('all_testimonial', $user_permission_list))
                @if(Request::is('admin/testimonial/list'))
                  <li class="active"><a href="{{ route('admin.testimonial_post_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.posts_list') !!}</a></li>
                @else
                  <li><a href="{{ route('admin.testimonial_post_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.posts_list') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('add_edit_testimonial', $user_permission_list))
                @if(Request::is('admin/testimonial/add') || Request::is('admin/testimonial/update/*'))
                  <li class="active"><a href="{{route('admin.testimonial_post_content')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_post') !!}</a></li>
                @else
                  <li><a href="{{route('admin.testimonial_post_content')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_post') !!}</a></li>
                @endif
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-thumbs-o-up"></i> <span>{!! trans('admin.testimonial_menu_title') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(in_array('all_testimonial', $user_permission_list))
                <li><a href="{{ route('admin.testimonial_post_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.posts_list') !!}</a></li>
              @endif
              
              @if(in_array('add_edit_testimonial', $user_permission_list))
                <li><a href="{{ route('admin.testimonial_post_content') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_new_post') !!}</a></li>
              @endif
            </ul>
          </li>
        @endif
      
      @endif
        
      @if(in_array('manage_products', $user_permission_list))  
        @if(Request::is('admin/product/list') || Request::is('admin/product/add') || Request::is('admin/product/update/*') || Request::is('admin/product/categories/list') || Request::is('admin/product/tags/list') || Request::is('admin/product/attributes/list') || Request::is('admin/product/colors/list') || Request::is('admin/product/sizes/list') || Request::is('admin/product/comments-list'))
         <li class="active treeview">
            <a href="#">
              <i class="fa fa-shopping-cart"></i> <span>{!! trans('admin.products') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              
              @if(in_array('all_products', $user_permission_list))  
                @if(Request::is('admin/product/list'))  
                  <li class="active"><a href="{{ route('admin.product_list') }}"><i class="fa fa-table"></i> {!! trans('admin.all_products') !!}</a></li>
                @else
                  <li><a href="{{ route('admin.product_list') }}"><i class="fa fa-table"></i> {!! trans('admin.all_products') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('add_edit_product', $user_permission_list)) 
                @if(Request::is('admin/product/add') || Request::is('admin/product/update/*'))
                  <li class="active"><a href="{{route('admin.add_product')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_product') !!}</a></li>
                @else
                  <li><a href="{{route('admin.add_product')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_product') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('product_categories', $user_permission_list))
                @if(Request::is('admin/product/categories/list'))
                  <li class="active"><a href="{{route('admin.product_categories_list')}}"><i class="fa fa-camera"></i> {!! trans('admin.categories') !!}</a></li>
                @else
                  <li><a href="{{route('admin.product_categories_list')}}"><i class="fa fa-camera"></i> {!! trans('admin.categories') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('product_tags', $user_permission_list))
                @if(Request::is('admin/product/tags/list'))
                  <li class="active"><a href="{{route('admin.product_tags_list')}}"><i class="fa fa-tags"></i> {!! trans('admin.tags') !!}</a></li>
                @else
                  <li><a href="{{route('admin.product_tags_list')}}"><i class="fa fa-tags"></i> {!! trans('admin.tags') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('product_attributes', $user_permission_list))
                @if(Request::is('admin/product/attributes/list') || Request::is('admin/product/attribute/add') || Request::is('admin/product/attribute/update/*'))
                  <li class="active"><a href="{{route('admin.product_attributes_list')}}"><i class="fa fa-th-large"></i> {!! trans('admin.attributes') !!}</a></li>
                @else
                  <li><a href="{{route('admin.product_attributes_list')}}"><i class="fa fa-th-large"></i> {!! trans('admin.attributes') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('product_colors', $user_permission_list))
                @if(Request::is('admin/product/colors/list') || Request::is('admin/product/colors/add') || Request::is('admin/product/colors/update/*'))
                  <li class="active"><a href="{{route('admin.product_colors_list')}}"><i class="fa fa-paint-brush"></i> {!! trans('admin.colors_label') !!}</a></li>
                @else
                  <li><a href="{{route('admin.product_colors_list')}}"><i class="fa fa-paint-brush"></i> {!! trans('admin.colors_label') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('product_sizes', $user_permission_list))
                @if(Request::is('admin/product/sizes/list') || Request::is('admin/product/sizes/add') || Request::is('admin/product/sizes/update/*'))
                  <li class="active"><a href="{{route('admin.product_sizes_list')}}"><i class="fa fa-th-large"></i> {!! trans('admin.sizes_label') !!}</a></li>
                @else
                  <li><a href="{{route('admin.product_sizes_list')}}"><i class="fa fa-th-large"></i> {!! trans('admin.sizes_label') !!}</a></li>
                @endif
              @endif
              
              @if(in_array('manage_products_comments', $user_permission_list))
                @if(Request::is('admin/product/comments-list'))
                  <li class="active"><a href="{{route('admin.all_products_comments')}}"><i class="fa fa-comment"></i> {!! trans('admin.blog_comments_list') !!}</a></li>  
                @else
                  <li><a href="{{route('admin.all_products_comments')}}"><i class="fa fa-comment"></i> {!! trans('admin.blog_comments_list') !!}</a></li>  
                @endif
              @endif
            </ul>
        </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-shopping-cart"></i> <span>{!! trans('admin.products') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(in_array('all_products', $user_permission_list))  
                <li><a href="{{ route('admin.product_list') }}"><i class="fa fa-table"></i> {!! trans('admin.all_products') !!}</a></li>
              @endif
              
              @if(in_array('add_edit_product', $user_permission_list)) 
                <li><a href="{{ route('admin.add_product') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_product') !!}</a></li>
              @endif
              
              @if(in_array('product_categories', $user_permission_list))
                <li><a href="{{ route('admin.product_categories_list') }}"><i class="fa fa-camera"></i> {!! trans('admin.categories') !!}</a></li>
              @endif
              
              @if(in_array('product_tags', $user_permission_list))
                <li><a href="{{ route('admin.product_tags_list') }}"><i class="fa fa-tags"></i> {!! trans('admin.tags') !!}</a></li>
              @endif
              
              @if(in_array('product_attributes', $user_permission_list))
                <li><a href="{{ route('admin.product_attributes_list') }}"><i class="fa fa-th-large"></i> {!! trans('admin.attributes') !!}</a></li>
              @endif
              
              @if(in_array('product_colors', $user_permission_list))
                <li><a href="{{ route('admin.product_colors_list') }}"><i class="fa fa-paint-brush"></i> {!! trans('admin.colors_label') !!}</a></li>
              @endif
              
              @if(in_array('product_sizes', $user_permission_list))
                <li><a href="{{ route('admin.product_sizes_list') }}"><i class="fa fa-th-large"></i> {!! trans('admin.sizes_label') !!}</a></li>
              @endif
              
              @if(in_array('manage_products_comments', $user_permission_list))
                <li><a href="{{ route('admin.all_products_comments') }}"><i class="fa fa-comment"></i> {!! trans('admin.blog_comments_list') !!}</a></li>  
              @endif
            </ul>
          </li>
        @endif
      @endif  

      @if(in_array('manage_shipping_method', $user_permission_list))
        @if(Request::is('admin/shipping-method/options') || Request::is('admin/shipping-method/flat-rate') || Request::is('admin/shipping-method/free-shipping') || Request::is('admin/shipping-method/local-delivery'))
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-car"></i> <span>{!! trans('admin.shipping_method') !!}</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            @if(Request::is('admin/shipping-method/options'))  
              <li class="active"><a href="{{ route('admin.shipping_method_options_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.shipping_options') !!}</a></li>
            @else
              <li><a href="{{ route('admin.shipping_method_options_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.shipping_options') !!}</a></li>
            @endif

            @if(Request::is('admin/shipping-method/flat-rate'))
              <li class="active"><a href="{{ route('admin.shipping_method_flat_rate_content') }}"><i class="fa fa-calculator"></i> {!! trans('admin.flat_rate') !!}</a></li>
            @else
              <li><a href="{{ route('admin.shipping_method_flat_rate_content') }}"><i class="fa fa-calculator"></i> {!! trans('admin.flat_rate') !!}</a></li>
            @endif

            @if(Request::is('admin/shipping-method/free-shipping'))
              <li class="active"><a href="{{ route('admin.shipping_method_free_shipping_content') }}"><i class="fa fa-close"></i> {!! trans('admin.free_shipping') !!}</a></li>
            @else
               <li><a href="{{ route('admin.shipping_method_free_shipping_content') }}"><i class="fa fa-close"></i> {!! trans('admin.free_shipping') !!}</a></li>
            @endif

            @if(Request::is('admin/shipping-method/local-delivery'))
              <li class="active"><a href="{{ route('admin.shipping_method_local_delivery_content') }}"><i class="fa fa-bus"></i> {!! trans('admin.local_delivery') !!}</a></li>
            @else
              <li><a href="{{ route('admin.shipping_method_local_delivery_content') }}"><i class="fa fa-bus"></i> {!! trans('admin.local_delivery') !!}</a></li>
            @endif
          </ul>
        </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-car"></i> <span>{!! trans('admin.shipping_method') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.shipping_method_options_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.shipping_options') !!}</a></li>
              <li><a href="{{ route('admin.shipping_method_flat_rate_content') }}"><i class="fa fa-calculator"></i> {!! trans('admin.flat_rate') !!}</a></li>
              <li><a href="{{ route('admin.shipping_method_free_shipping_content') }}"><i class="fa fa-close"></i> {!! trans('admin.free_shipping') !!}</a></li>
              <li><a href="{{ route('admin.shipping_method_local_delivery_content') }}"><i class="fa fa-bus"></i> {!! trans('admin.local_delivery') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif
      
      @if(in_array('manage_payment_method', $user_permission_list))
        @if(Request::is('admin/payment-method/options') || Request::is('admin/payment-method/direct-bank') || Request::is('admin/payment-method/cash-on-delivery') || Request::is('admin/payment-method/paypal') || Request::is('admin/payment-method/stripe'))
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-money"></i> <span>{!! trans('admin.payment_method') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(Request::is('admin/payment-method/options'))  
                <li class="active"><a href="{{ route('admin.payment_method_options_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.payment_options') !!}</a></li>
              @else
                <li><a href="{{ route('admin.payment_method_options_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.payment_options') !!}</a></li>
              @endif

              @if(Request::is('admin/payment-method/direct-bank'))
                <li class="active"><a href="{{ route('admin.payment_method_direct_bank_content') }}"><i class="fa fa-bank"></i> {!! trans('admin.direct_bank_transfer') !!}</a></li>
              @else
                <li><a href="{{ route('admin.payment_method_direct_bank_content') }}"><i class="fa fa-bank"></i> {!! trans('admin.direct_bank_transfer') !!}</a></li>
              @endif

              @if(Request::is('admin/payment-method/cash-on-delivery'))
                <li class="active"><a href="{{ route('admin.payment_method_cash_on_delivery_content') }}"><i class="fa fa-home"></i> {!! trans('admin.cash_on_delivery') !!}</a></li>
              @else
                <li><a href="{{ route('admin.payment_method_cash_on_delivery_content') }}"><i class="fa fa-home"></i> {!! trans('admin.cash_on_delivery') !!}</a></li>
              @endif

              @if(Request::is('admin/payment-method/paypal'))
                <li class="active"><a href="{{ route('admin.payment_method_paypal_content') }}"><i class="fa fa-paypal"></i> {!! trans('admin.paypal') !!}</a></li>
              @else
                <li><a href="{{ route('admin.payment_method_paypal_content') }}"><i class="fa fa-paypal"></i> {!! trans('admin.paypal') !!}</a></li>
              @endif
              
              @if(Request::is('admin/payment-method/stripe'))
                <li class="active"><a href="{{ route('admin.payment_method_stripe_content') }}"><i class="fa fa-cc-stripe"></i> {!! trans('admin.stripe') !!}</a></li>
              @else
                <li><a href="{{ route('admin.payment_method_stripe_content') }}"><i class="fa fa-cc-stripe"></i> {!! trans('admin.stripe') !!}</a></li>
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-money"></i> <span>{!! trans('admin.payment_method') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.payment_method_options_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.payment_options') !!}</a></li>
              <li><a href="{{ route('admin.payment_method_direct_bank_content') }}"><i class="fa fa-bank"></i> {!! trans('admin.direct_bank_transfer') !!}</a></li>
              <li><a href="{{ route('admin.payment_method_cash_on_delivery_content') }}"><i class="fa fa-home"></i> {!! trans('admin.cash_on_delivery') !!}</a></li>
              <li><a href="{{ route('admin.payment_method_paypal_content') }}"><i class="fa fa-paypal"></i> {!! trans('admin.paypal') !!}</a></li>
               <li><a href="{{ route('admin.payment_method_stripe_content') }}"><i class="fa fa-cc-stripe"></i> {!! trans('admin.stripe') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif
      
      @if(in_array('manage_brands', $user_permission_list))
        @if(Request::is('admin/manufacturers/list') || Request::is('admin/manufacturers/add') || Request::is('admin/manufacturers/update/*'))
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-apple"></i> <span>{!! trans('admin.manufacturers') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(Request::is('admin/manufacturers/list'))  
                <li class="active"><a href="{{ route('admin.manufacturers_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.all_manufacturers') !!}</a></li>
              @else
                <li><a href="{{ route('admin.manufacturers_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.all_manufacturers') !!}</a></li>
              @endif

              @if(Request::is('admin/manufacturers/add') || Request::is('admin/manufacturers/update/*'))
                <li class="active"><a href="{{ route('admin.add_manufacturers_content') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_manufacturer') !!}</a></li>
              @else
                 <li><a href="{{ route('admin.add_manufacturers_content') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_manufacturer') !!}</a></li>
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-apple"></i> <span>{!! trans('admin.manufacturers') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.manufacturers_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.all_manufacturers') !!}</a></li>
              <li><a href="{{ route('admin.add_manufacturers_content') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.add_manufacturer') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif  

      @if(in_array('manage_designer_elements', $user_permission_list))
        @if(Request::is('admin/designer/clipart/categories/list') || Request::is('admin/designer/clipart/category/add') || Request::is('admin/designer/clipart/category/update/*') || Request::is('admin/designer/clipart/list') || Request::is('admin/designer/clipart/add') || Request::is('admin/designer/clipart/update/*') || Request::is('admin/designer/settings'))
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-paint-brush"></i> <span>{!! trans('admin.custom_designer_elements') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(Request::is('admin/designer/clipart/categories/list') || Request::is('admin/designer/clipart/category/add') || Request::is('admin/designer/clipart/category/update/*'))  
                <li class="active"><a href="{{ route('admin.art_categories_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.art_categories_lists') !!}</a></li>
              @else
                <li><a href="{{ route('admin.art_categories_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.art_categories_lists') !!}</a></li>
              @endif

              @if(Request::is('admin/designer/clipart/list') || Request::is('admin/designer/clipart/add') || Request::is('admin/designer/clipart/update/*'))
                <li class="active"><a href="{{ route('admin.clipart_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.clipart_lists') !!}</a></li>
              @else
                <li><a href="{{ route('admin.clipart_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.clipart_lists') !!}</a></li>
              @endif

              @if(Request::is('admin/designer/settings'))
                <li class="active"><a href="{{ route('admin.designer_settings_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.settings') !!}</a></li>
              @else
                <li><a href="{{ route('admin.designer_settings_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.settings') !!}</a></li>
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-paint-brush"></i> <span>{!! trans('admin.custom_designer_elements') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.art_categories_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.art_categories_lists') !!}</a></li>
              <li><a href="{{ route('admin.clipart_list_content') }}"><i class="fa fa-table"></i> {!! trans('admin.clipart_lists') !!}</a></li>
              <li><a href="{{ route('admin.designer_settings_content') }}"><i class="fa fa-wrench"></i> {!! trans('admin.settings') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif  

      @if(in_array('manage_orders', $user_permission_list))
        @if(Request::is('admin/orders') || Request::is('admin/orders/details/*') || Request::is('admin/orders/current-date'))
          <li class="active">
            <a href="{{ route('admin.shop_orders_list') }}">
              <i class="fa fa-file-text-o"></i> <span>{!! trans('admin.orders') !!}</span>
            </a>
          </li>
        @else
          <li>
            <a href="{{ route('admin.shop_orders_list') }}">
              <i class="fa fa-file-text-o"></i> <span>{!! trans('admin.orders') !!}</span>
            </a>
          </li>
        @endif
      @endif  
        
      @if(in_array('manage_reports', $user_permission_list))
        @if(Request::is('admin/reports') || Request::is('admin/reports/sales-by-product-title') || Request::is('admin/reports/sales-by-month') || Request::is('admin/reports/sales-by-last-7-days') || Request::is('admin/reports/sales-by-custom-days') || Request::is('admin/reports/sales-by-payment-method'))
          <li class="active">
            <a href="{{ route('admin.reports_list') }}">
              <i class="fa fa-bar-chart"></i> <span>{!! trans('admin.reports') !!}</span>
            </a>
          </li>
        @else
          <li>
            <a href="{{ route('admin.reports_list') }}">
              <i class="fa fa-bar-chart"></i> <span>{!! trans('admin.reports') !!}</span>
            </a>
          </li>
        @endif
      @endif  
        
      @if(isset($user_data['user_role_slug']) && $user_data['user_role_slug'] == 'administrator')
        @if(Request::is('admin/users/roles/list') || Request::is('admin/users/roles/add') || Request::is('admin/users/roles/update/*') || Request::is('admin/users/list') || Request::is('admin/user/add') || Request::is('admin/user/update/*') || Request::is('admin/user/profile'))
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-user"></i> <span>{!! trans('admin.admin_menu_users_label') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(Request::is('admin/users/list'))
                <li class="active"><a href="{{ route('admin.users_list') }}"><i class="fa fa-table"></i> {!! trans('admin.admin_menu_users_sub_label_1') !!}</a></li>
              @else
                <li><a href="{{ route('admin.users_list') }}"><i class="fa fa-table"></i> {!! trans('admin.admin_menu_users_sub_label_1') !!}</a></li>
              @endif

              @if(Request::is('admin/users/roles/list'))
                <li class="active"><a href="{{ route('admin.users_roles_list') }}"><i class="fa fa-table"></i> {!! trans('admin.admin_menu_users_sub_label_4') !!}</a></li>
              @else
                <li><a href="{{ route('admin.users_roles_list') }}"><i class="fa fa-table"></i> {!! trans('admin.admin_menu_users_sub_label_4') !!}</a></li>
              @endif

              @if( Request::is('admin/users/roles/add') || Request::is('admin/users/roles/update/*'))
                <li class="active"><a href="{{ route('admin.add_roles') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.admin_menu_users_sub_label_2') !!}</a></li>
              @else
                <li><a href="{{ route('admin.add_roles') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.admin_menu_users_sub_label_2') !!}</a></li>
              @endif

              @if(Request::is('admin/user/add') || Request::is('admin/user/update/*'))
                <li class="active"><a href="{{ route('admin.add_new_user') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.admin_menu_users_sub_label_3') !!}</a></li>
              @else
                <li><a href="{{ route('admin.add_new_user') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.admin_menu_users_sub_label_3') !!}</a></li>
              @endif

              @if(Request::is('admin/user/profile'))
                <li class="active"><a href="{{ route('admin.user_profile') }}"><i class="fa fa-user"></i> {!! trans('admin.your_profile') !!}</a></li>
              @else
                <li><a href="{{ route('admin.user_profile') }}"><i class="fa fa-user"></i> {!! trans('admin.your_profile') !!}</a></li>
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-user"></i> <span>{!! trans('admin.admin_menu_users_label') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.users_list') }}"><i class="fa fa-table"></i> {!! trans('admin.admin_menu_users_sub_label_1') !!}</a></li>
              <li><a href="{{ route('admin.users_roles_list') }}"><i class="fa fa-table"></i> {!! trans('admin.admin_menu_users_sub_label_4') !!}</a></li>
              <li><a href="{{ route('admin.add_roles') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.admin_menu_users_sub_label_2') !!}</a></li>
              <li><a href="{{ route('admin.add_new_user') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.admin_menu_users_sub_label_3') !!}</a></li>
              <li><a href="{{ route('admin.user_profile') }}"><i class="fa fa-user"></i> {!! trans('admin.your_profile') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif  
      
      @if(in_array('manage_coupon', $user_permission_list))
        @if( Request::is('admin/coupon-manager/coupon/add') || Request::is('admin/coupon-manager/coupon/update/*') || Request::is('admin/coupon-manager/coupon/list') )
          <li class="active">
            <a href="{{ route('admin.coupon_manager_list') }}" class="active">
              <i class="fa fa-percent"></i> <span>{!! trans('admin.coupon_manager_label') !!}</span>
            </a>
          </li>
        @else
          <li>
            <a href="{{ route('admin.coupon_manager_list') }}">
              <i class="fa fa-percent"></i> <span>{!! trans('admin.coupon_manager_label') !!}</span>
            </a>
          </li>
        @endif
      @endif
        
      @if(in_array('manage_seo', $user_permission_list))
        @if(Request::is('admin/manage/seo'))
          <li class="active">
            <a href="{{ route('admin.manage_seo_content') }}" class="active">
              <i class="fa fa-search-plus"></i> <span>{!! trans('admin.seo_label') !!}</span>
            </a>
          </li>
        @else
          <li>
            <a href="{{ route('admin.manage_seo_content') }}">
              <i class="fa fa-search-plus"></i> <span>{!! trans('admin.seo_label') !!}</span>
            </a>
          </li>
        @endif
      @endif  
        
      @if(in_array('manage_requested_product', $user_permission_list))
        @if(Request::is('admin/customer/request-product'))
          <li class="active">
            <a href="{{ route('admin.request_product_content') }}" class="active">
              <i class="fa fa-question-circle-o"></i> <span>{!! trans('admin.request_product_label') !!}</span>
            </a>
          </li>
        @else
          <li>
            <a href="{{ route('admin.request_product_content') }}">
              <i class="fa fa-question-circle-o"></i> <span>{!! trans('admin.request_product_label') !!}</span>
            </a>
          </li>
        @endif
      @endif  
       
      @if(in_array('manage_subscription', $user_permission_list))
        @if(Request::is('admin/subscription/custom') || Request::is('admin/subscription/mailchimp') || Request::is('admin/subscription/settings') )
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-file-text"></i> <span>{!! trans('admin.subscriptions_manager_menu_title') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(Request::is('admin/subscription/custom'))
                <li class="active"><a href="{{ route('admin.custom_subscription_content') }}"><i class="fa fa-table"></i> {!! trans('admin.custom_subscriptions_menu_label') !!}</a></li>
              @else
                <li><a href="{{ route('admin.custom_subscription_content') }}"><i class="fa fa-table"></i> {!! trans('admin.custom_subscriptions_menu_label') !!}</a></li>
              @endif

              @if(Request::is('admin/subscription/mailchimp'))
                <li class="active"><a href="{{route('admin.mailchimp_subscription_content')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.mailchimp_subscriptions_label') !!}</a></li>
              @else
                <li><a href="{{route('admin.mailchimp_subscription_content')}}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.mailchimp_subscriptions_label') !!}</a></li>
              @endif
              
              @if(Request::is('admin/subscription/settings'))
                <li class="active"><a href="{{route('admin.settings_subscription_content')}}"><i class="fa fa-cog"></i> {!! trans('admin.subscription_settings_label') !!}</a></li>
              @else
                <li><a href="{{route('admin.settings_subscription_content')}}"><i class="fa fa-cog"></i> {!! trans('admin.subscription_settings_label') !!}</a></li>
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-file-text"></i> <span>{!! trans('admin.subscriptions_manager_menu_title') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.custom_subscription_content') }}"><i class="fa fa-table"></i> {!! trans('admin.custom_subscriptions_menu_label') !!}</a></li>
              <li><a href="{{ route('admin.mailchimp_subscription_content') }}"><i class="fa fa-plus-square-o"></i> {!! trans('admin.mailchimp_subscriptions_label') !!}</a></li>
              <li><a href="{{ route('admin.settings_subscription_content') }}"><i class="fa fa-cog"></i> {!! trans('admin.subscription_settings_label') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif  
						
      @if(in_array('manage_extra_features', $user_permission_list))
        @if(Request::is('admin/extra-features/product-compare-fields') || Request::is('admin/extra-features/color-filter'))			
        <li class="active treeview">
          <a href="#">
            <i class="fa fa-plus"></i> <span>{!! trans('admin.more_features_label') !!}</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            @if(Request::is('admin/extra-features/product-compare-fields'))
              <li class="active"><a href="{{ route('admin.extra_features_compare_products_content') }}"><i class="fa fa-exchange"></i> {!! trans('admin.more_features_compare_products_label') !!}</a></li>
            @else
              <li><a href="{{ route('admin.extra_features_compare_products_content') }}"><i class="fa fa-exchange"></i> {!! trans('admin.more_features_compare_products_label') !!}</a></li>
            @endif
          </ul>
        </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-plus"></i> <span>{!! trans('admin.more_features_label') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.extra_features_compare_products_content') }}"><i class="fa fa-exchange"></i> {!! trans('admin.more_features_compare_products_label') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif  

      @if(in_array('manage_settings', $user_permission_list))
        @if(Request::is('admin/settings/general') || Request::is('admin/settings/languages') || Request::is('admin/settings/languages/update/*') || Request::is('admin/settings/appearance'))
          <li class="active treeview">
            <a href="#">
              <i class="fa fa-cog"></i> <span>{!! trans('admin.settings') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              @if(Request::is('admin/settings/general'))  
                <li class="active"><a href="{{ route('admin.general_settings_content') }}"><i class="fa fa-circle-o"></i> {!! trans('admin.general') !!}</a></li>
              @else
                 <li><a href="{{ route('admin.general_settings_content') }}"><i class="fa fa-circle-o"></i> {!! trans('admin.general') !!}</a></li>
              @endif

              @if(Request::is('admin/settings/languages') || Request::is('admin/settings/languages/update/*'))
                <li class="active"><a href="{{ route('admin.languages_settings_content') }}"><i class="fa fa-flag"></i> {!! trans('admin.languages') !!}</a></li>
              @else
                <li><a href="{{ route('admin.languages_settings_content') }}"><i class="fa fa-flag"></i> {!! trans('admin.languages') !!}</a></li>
              @endif

              @if(Request::is('admin/settings/appearance'))
                <li class="active"><a href="{{ route('admin.frontend_layout_settings_content') }}"><i class="fa fa-paint-brush"></i> {!! trans('admin.frontend_layout') !!}</a></li>
              @else
                <li><a href="{{ route('admin.frontend_layout_settings_content') }}"><i class="fa fa-paint-brush"></i> {!! trans('admin.frontend_layout') !!}</a></li>
              @endif
            </ul>
          </li>
        @else
          <li class="treeview">
            <a href="#">
              <i class="fa fa-cog"></i> <span>{!! trans('admin.settings') !!}</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
              <li><a href="{{ route('admin.general_settings_content') }}"><i class="fa fa-circle-o"></i> {!! trans('admin.general') !!}</a></li>
              <li><a href="{{ route('admin.languages_settings_content') }}"><i class="fa fa-flag-o"></i> {!! trans('admin.languages') !!}</a></li>
              <li><a href="{{ route('admin.frontend_layout_settings_content') }}"><i class="fa fa-paint-brush"></i> {!! trans('admin.frontend_layout') !!}</a></li>
            </ul>
          </li>
        @endif
      @endif  
    </ul>
  </section>
</aside>