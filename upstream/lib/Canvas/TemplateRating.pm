#
# Copyright (C) 2013    Ian Firns   <firnsy@kororaproject.org>
#                       Chris Smart <csmart@kororaproject.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
package Canvas::TemplateRating;

use strict;
use base 'Canvas::DBI';

__PACKAGE__->table('canvas_template_ratings');
__PACKAGE__->columns(All => qw/id template_id rating_id/);

__PACKAGE__->has_a(template_id => 'Canvas::Template');
__PACKAGE__->has_a(rating_id => 'Canvas::Rating');



1;

