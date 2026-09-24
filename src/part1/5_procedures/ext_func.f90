character (len=1) function Coin_toss(x)
   implicit none
   real, intent(in) :: x
   if (x > 0.5) then
      Coin_toss = 'H'
   else
      Coin_toss = 'T'
   end if
end function Coin_toss
