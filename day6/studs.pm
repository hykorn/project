package studs;

sub new
{
  #print "@_\n";
  $class = shift;  # shift Studs into $class
  $ref={name=>undef, m=>[], tot=>undef, avg=>undef};
  bless($ref,$class);
  #return $ref;
}

sub In { 
  #print "@_\n"; 
  $self = shift;
  print "Enter the details: ";
  chomp($ref->{name}=<STDIN>);
  chomp($ref->{marks}[0]=<STDIN>);
  chomp($ref->{marks}[1]=<STDIN>);
  chomp($ref->{marks}[2]=<STDIN>);
  $ref->{tot} = $ref->{marks}[0] +  $ref->{marks}[1] +  $ref->{marks}[2];
  $ref->{avg} = $ref->{tot}/3;
}
sub Out { 
  $ref = shift;
  #print "@_\n"; 
  print "$ref->{name} $ref->{avg}\n";
}

1;
