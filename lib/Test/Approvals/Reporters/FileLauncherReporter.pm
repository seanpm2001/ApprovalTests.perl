#! perl

use strict;
use warnings FATAL => 'all';

package Test::Approvals::Reporters::FileLauncherReporter;
{
    use version; our $VERSION = qv(0.0.1);
    use Moose;

    with 'Test::Approvals::Reporters::Win32Reporter';
    with 'Test::Approvals::Reporters::Reporter';
    with 'Test::Approvals::Reporters::EnvironmentAwareReporter';

    sub exe {
        return locate_exe( q{}, 'cmd.exe' );
    }

    sub argv {
        return '/C "RECEIVED"';
    }
}
__PACKAGE__->meta->make_immutable;
1;
