#!/usr/bin/env perl

$max_repeat = 5;
$pdf_mode = 3;
$bibtex_use = 2;

$latex = 'latex -synctex=1 -halt-on-error -interaction=nonstopmode -file-line-error -shell-escape';
$bibtex = 'pbibtex';

$pvc_view_file_via_temporary = 0;
$dvi_previewer = "xdg-open";
$pdf_previewer = "xdg-open";
