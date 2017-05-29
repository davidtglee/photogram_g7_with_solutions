class Photo < ApplicationRecord
 validates(:source, {:presence=>true, :uniqueness=>true})
 validates:caption, presence:true, uniqueness:=>true
 end
