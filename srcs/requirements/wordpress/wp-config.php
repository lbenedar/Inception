<?php
define( 'DB_NAME', '$DB_NAME' );
define( 'DB_USER', '$DB_ROOT' );
define( 'DB_PASSWORD', '$DB_PASSWORD_ROOT' );
define( 'DB_HOST', '$DB_HOST:3306' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );
define( 'AUTH_KEY',         'W$):LW1*{D|kc[]}oC~(JN5Av/#?h`ZF-RSQ(f=v s3%5R&,oR#J>Vc,*xFusCLz' );
define( 'SECURE_AUTH_KEY',  '3y]UQfn/@DbBnd INCtFSv1J-t,>rFX;4iBD9h,}r]{;oRE0kw|CU5kV}I2}Nht:' );
define( 'LOGGED_IN_KEY',    '!UI.2Nv_>WM6r$8sOS}!0qY(mGtaq+)F9t?!?g0(fuBAp@?H@^pr4ta.?L5f=A;A' );
define( 'NONCE_KEY',        '$&~tW!,tLpWUCSdxKod?JFKiw0|(YX}TL*ZCW2c7PoxC4WP2Mj/eTJH@-H:vw-qu' );
define( 'AUTH_SALT',        '/**KcN>t0-zzoF{q6]c:o6.$?{},,,}}lMJM2o3ij*T9X@h&vST0k9w6lG)]/bBK' );
define( 'SECURE_AUTH_SALT', 'IU[M_EqXhEvS3K-m3{8bx51t +#nfPfj:_Um3$LyICiUge@QbU#u/+pUswY}]^{=' );
define( 'LOGGED_IN_SALT',   's,=}P)@1vL+-bB|=#WjKsN2BG?Bk{-oWxum4]|gdLs<2;EExXzm|SWV;(A.*hr^2' );
define( 'NONCE_SALT',       'skP1ncuIW69T2d0tvHQtA07F5C H~BP G<#tR+BRn<BR~b@0F|fTB$U390s[kLZy' );
define( 'CONCATENATE_SCRIPTS', false);
define( 'SCRIPT_DEBUG', true );
$table_prefix = '$TABLE_PREFIX';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once ABSPATH . 'wp-settings.php';
