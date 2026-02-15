use File::Basename;

$out_dir = 'build';
$aux_dir = 'build';
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build';

add_cus_dep('glo','gls',0,'makeglossaries');
add_cus_dep('acn','acr',0,'makeglossaries');
sub makeglossaries {
  my ($name, $path) = fileparse($_[0]);      # $_[0] might be "build/main"
  $path = $path eq '' ? '.' : $path;
  system("makeglossaries -d '$path' '$name'");
}

$bibtex_use = 2;
@default_files = ('main.tex');  # optional but recommended
