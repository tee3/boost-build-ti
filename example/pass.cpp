#include "a.hpp"
#include "b.h"

class pass
{
public:
   const a_class & data () const
   {
      return local_a_class;
   }

private:
   a_class local_a_class;
};

int
main ()
{
   pass p;

   a (p.data ());
   b ();

   return 0;
}
