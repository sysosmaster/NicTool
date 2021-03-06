#!/usr/bin/perl
###
# NicTool v2.00-rc1 Copyright 2001 Damon Edwards, Abe Shelton & Greg Schueler
# NicTool v2.01 Copyright 2004 The Network People, Inc.
#
# NicTool is free software; you can redistribute it and/or modify it under
# the terms of the Affero General Public License as published by Affero,
# Inc.; either version 1 of the License, or any later version.
#
# NicTool is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE. See the Affero GPL for details.
#
# You should have received a copy of the Affero General Public License
# along with this program; if not, write to Affero Inc., 521 Third St,
# Suite 225, San Francisco, CA 94107, USA
#
###

package NicTool::Nameserver;
use NicTool::DBObject;
our @ISA = qw(NicTool::DBObject);

sub _id_name {'nt_nameserver_id'}

sub _api {
    +{  _get_self => { 'function' => 'get_nameserver', 'includeid' => 1 },
        _delete_self =>
            { 'function' => 'delete_nameserver', 'includeid' => 1 },
        get_nameserver    => { 'includeid' => 1 },
        edit_nameserver   => { 'includeid' => 1 },
        delete_nameserver => { 'includeid' => 1 },
    };
}

1;
