<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'cursoudemy' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '`9yw#kEs+#TQJ/KHopc8VCw2Jui!?b2Zh8;|l{^+vAN//%IMakm/<~}STGghC1r_' );
define( 'SECURE_AUTH_KEY',  'q4)+qXP)w`9=UKvhPRmmpA(cGZwxA6R%V(U%tf7?z_XjB$1!qmqeEq;/OZC6O(0H' );
define( 'LOGGED_IN_KEY',    'crmGQwXAdz2j]%-iZ@U%dVWKCf4O!N4gR=wf*XwC[?Iv (=NR0uRmwFgiubu ,N~' );
define( 'NONCE_KEY',        'p_$1MZbh+c|`>$gGy#9|Rf1:bCxb:8D.dILRDdXH+}3p4_3tcO]@%b4[W_h7IJVF' );
define( 'AUTH_SALT',        'LY[a1#|^XT0_aWq/U~8(VWDc+c%XS|]GB:0! J?/c6 |Jh[D5@pI~IQi-Is4pHe;' );
define( 'SECURE_AUTH_SALT', '59ff6)jg]^X--0I7~2 ^>zo#A? tZ,~qzr7~l~d!T0i%Tkci#t2kxAP+tQ7XySne' );
define( 'LOGGED_IN_SALT',   'x^B9H.FgQ0PNK`9KwQM:2?=]Fn8%o.GW([esGf]l/{y,-]9x7t|].YQhBM-W[MTx' );
define( 'NONCE_SALT',       '`SkoIR*_RO2#x7ynp<?*S1]sK3(:1t5i)p3`><k#?%^ejno,`Ve,.sWENmvJ;7Fl' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wpcrs_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
