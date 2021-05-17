<?php 

//Mapa

function codigowp_customizer( $wp_customize){

$wp_customize->add_section(
        'sec_map', array(
            'title' => 'Map',
            'description' => 'Map Section'
        )
    );

$wp_customize->add_setting(
        'set_address', array(
            'type' => 'theme_mod',
            'default' => '',
            'sanitize_callback' => 'sanitize_text_field'
            )
    );

$wp_customize->add_control(
    'set_address', array(
        'label' => 'Address',
        'description' => 'Paste here the string corresponding to the map adress',
        'section' => 'sec_map',
        'type' => 'text'
        )
    );

}

add_action( 'customize_register', 'codigowp_customizer');

//

function wpcurso_customizer ( $wp_customize ){
    // Copyright

    $wp_customize -> add_section(
        'sec_copyright', array(
            'title' => 'Copyright',
            'description' => 'Copyright Section'
        )
    );

    $wp_customize -> add_setting(
        'set_copyright', array(
            'type' => 'theme_mod',
            'default' => 'Copyright X - All rights reserved',
            'sanitize_callback' => 'wp_filter_nohtml_kses'
        )
    );

    $wp_customize -> add_control(
        'set_copyright', array(
            'label' => 'Copyright',
            'description' => 'Choose whether to show the       Services section or not',
            'section' => 'sec_copyright',
            'type' => 'text'
        )
    );

}
add_action( 'customize_register', 'wpcurso_customizer' );