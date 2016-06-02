use strict;
use warnings;

use Test::More tests => 21;

BEGIN { use_ok('Math::BivariateCDF') }

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.
#Math::BivariateCDF::bivnor(0.01, 0.01, 0.01);

#cdf x y correlation
my @vals = (
    [0.359905409368831, 0.036412293026205,  0.0708220179920969,  0.734208757779421],
    [0.365580183936228, 0.0428644207825943, 0.0296545938209543,  0.728868986855662],
    [0.210548171202747, 0.11600171033121,   0.11910582322574,    0.0327868852459016],
    [0.23207199556715,  0.0457753351073424, 0.0851617402785732,  0.0476190476190476],
    [0.22341742255267,  0.0851617402785732, 0.0785845483694907,  0.0314970394174356],
    [0.173514838316166, 0.182767776685671,  0.178099689500809,   -0.0650428000487437],
    [0.242307532823671, 0.0469359135524636, 0.0184700101336557,  0.0327868852459016],
    [0.264885758960159, 0.0220997747855169, -0.0589371837001702, 0.0487821000365578],
    [0.232625228275984, 0.0606970490116174, 0.0550001000332323,  0.0325214000243719],
    [0.240235193036092, 0.0269070244506482, 0.0492506194103846,  0.0327868852459016],
    [0.235731423130852, 0.048094339155653,  0.0515567736550362,  0.0327868852459016],
    [0.240442034750273, 0.0492506194103846, 0.0387662301741831,  0.0483870967741935],
    [0.236314130607731, 0.0446125962878241, 0.0515567736550362,  0.0322622612330552],
    [0.237358405269748, 0.0281031001489114, 0.0492506194103846,  0.0161311306165276],
    [0.248010831899286, -0.01007806638658,  0.0328647019283641,  0.0163934426229508],
    [0.245751133155961, 0.017255409833983,  0.017255409833983,   0.0162607000121859],
    [0.271938906013812, 0.017255409833983,  -0.103026886627233,  0.0325214000243719],
    [0.236718506870204, 0.0504047617714123, 0.0304884250035562,  0.0163934426229508],
);

# ============================================================

my ($w, $x, $y, $z);

for (@vals) {
    ($w, $x, $y, $z) = @{$_};
    ok(almost(Math::BivariateCDF::bivnor($x, $y, $z), $w, 1e-15), "bivnor($x, $y, $z)==$w");
}

eval { Math::BivariateCDF::bivnor(0.1,0.1,0); };
ok( $@, "bivnor() causes exception" );

# ============================================================

done_testing();

# ============================================================

sub almost {
    my ($x, $y, $err) = @_;
    return abs($x - $y) < $err;
}


