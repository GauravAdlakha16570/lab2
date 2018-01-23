#!/bin/sh
cat > $1.hh << EOF
#ifndef $1_hh
#define $1_hh

class $1
{
  public:
    $1();
   ~$1();

  private:
};
#endif
EOF

cat > $1.cc << EOF
#include “./$1.hh”

$1::$1()
{}

$1::~$1()
{}
EOF


