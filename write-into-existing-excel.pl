#!/usr/bin/perl

use strict;
use Spreadsheet::ParseExcel;
use Spreadsheet::ParseExcel::SaveParser;

# Open the excel template with SaveParser (create excel file in same directory with this script)
my $parser      = new Spreadsheet::ParseExcel::SaveParser;
my $template    = $parser->Parse('tmpl.xls');

my $sheet       = 0; # This is the sheet on bottom of excel, 0 = first sheet
my $row         = 1; # Row in excel where to write, 1 = second row
my $col         = 0; # Column in excel 0 = first column
my $data_to_add = "Written by Perl";

my $format      = $template->{Worksheet}[$sheet]
                ->{Cells}[$row][$col]
                ->{FormatNo};
$template->AddCell(0, $row, $col, $data_to_add, $format);
$template->SaveAs('new.xls'); # Write new excel based on template
