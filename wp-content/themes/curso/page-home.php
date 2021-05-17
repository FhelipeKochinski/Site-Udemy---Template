<?php get_header(); ?>
	<div class="content-area">
		<main>
			<!-- Slide -->
			<section class="slide">
				<?php echo do_shortcode( '[recent_post_slider design="design-2" limit="5"]' ); ?>
			</section>
			<section class="services">
				<div class="container">
					<h1>Our Services</h1>
					<div class="row">
						<div class="col-sm-4">
							<div class="services-item">
								<?php 
								if( is_active_sidebar( 'services-1' )){
									dynamic_sidebar( 'services-1' );
								}

								?>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="services-item">
								<?php 
								if( is_active_sidebar( 'services-2' )){
									dynamic_sidebar( 'services-2' );
								}

								?>								
							</div>
						</div>
						<div class="col-sm-4">
							<div class="services-item">
								<?php 
								if( is_active_sidebar( 'services-3' )){
									dynamic_sidebar( 'services-3' );
								}

								?>								
							</div>
						</div>
					</div>
				</div>				
			</section>
			<section class="middle-area">
				<div class="container">
					<div class="row">
						<?php get_sidebar( 'home' ); ?>
						<!-- Latest News Area -->
						<div class="news col-md-8">
							<div class="container">
							<h1>Latest News</h1>
								<div class="row">
								
									<!-- Loop WP_Query -->
									<?php $featured = new WP_Query( 'post_type=post&posts_per_page=1&cat=9,11' ); ?>

									<?php if( $featured->have_posts() ): ?>
										
										<?php while ( $featured->have_posts() ): $featured->the_post(); ?>
									
											<?php $post1 = $post->ID ?>
											<div class="col-12">
												<?php get_template_part( 'template-parts/content', 'featured' ); ?>
											</div>
									
										<?php endwhile; ?>
										
										<?php wp_reset_postdata(); ?>
								
									<?php endif; ?>

								<!-- Segundo Loop WP_Query -->

								<?php 
								$args = array (
									'post_type' => 'post',
									'posts_per_page' => '2',
									'category__not_in' => array(10),
									'category__in' => array( 9,11 ),
									'post__not_in' => array($post1)
								); ?>

									<?php $secondary = new WP_Query( $args ); ?>

									<?php if( $secondary->have_posts() ):
										while( $secondary->have_posts() ): $secondary->the_post(); ?>
									
									
									<div class="col-sm-6">
										<?php get_template_part( 'template-parts/content', 'secondary' ); ?>
									</div>
									
									<?php
										endwhile;
										wp_reset_postdata();
									endif;
									?>
								</div>
							</div>
						</div>						
					</div>
				</div>				
			</section>

			<!-- Mapa --> 
			<section class="map">
			<iframe src="https://www.google.com/maps/embed?pb=<?php echo esc_html ( get_theme_mod('set_address') ); ?>" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>			
			</section>
		</main>
	</div>
<?php get_footer(); ?>