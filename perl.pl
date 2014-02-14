$str = '//;\n4;5;8;12\n5;;7';

sub test {

	my ($str) = @_;
	my (@val) = split(/\\n/,$str);

	#find delimiter
	if($val[0] =~/^\s*\/\/(.*?)$/s) {
		$delimiter = $1;
		$remove = shift(@val);
	}
	else {
		$delimiter = ';';
	}
	
	print "delimiter is $delimiter \n";
	$sum = 0;
	foreach my $val (@val) {
		(@numbers) = split(/$delimiter/,$val);
		print "numbers is @numbers \n";
		foreach my $num (@numbers) {
			$num = 0 if ($num =~/^\s*$/s);
			if($num < 0 ) {
				print "Please dont enter -ve value\n";
				exit;
			}
			$sum = $sum+$num;
		}
	}
	print "sum is $sum\n";


}

&test($str);
