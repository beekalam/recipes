#singleInstance force
#persistent
#MaxThreads 255
SetBatchLines, -1
I_mindmanager = mindmanager
firefoxPath ="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
I_imageocc = Occlusion
I_acrobatreader = adobe
I_visualstudio = Microsoft Visual Studio
gvimAddress =  "C:\Program Files (x86)\Vim\vim74\gvim.exe"
scriptAddress = "H:\mybase\myscripts\global.ahk"
ankiPath =  "C:\Program Files (x86)\Anki\anki.exe"
activewindow= "a"
;ShiftDownCounter = 0
;AltTabDown = 0
SetTitleMatchMode, 2
;#KeyHistory 500

;_______________Testing for now -------
;vlc media player
#IfWinActive, ahk_exe vlc.exe
{
/*
;bug , MouseMove does not goes there
  ;add to favorites
  lwin & f::
     send ^{i}
     
     click
     send {End}
     send +{Home}
     send {del} 
     send {.}{f}{a}{v}
     send !{s}
     sleep 50
     send {Esc}
     return 
  ;remove from favorites
  lwin & v::
     send ^{i}
     MouseMove, 165,97
     click
     send {End}
     send +{Home}
     send {del}
     send !{s}
     sleep 50
     send {Esc}
     return
*/
}
#IfWinActive

#IfWinActive, ahk_exe winword.exe
{
::inl::
sendInput {- 119}
return

}
#IfWinActive
#IfWinActive,ahk_exe cmd.exe
{
   lctrl & l::
       send {bs 10}
       send {Enter}
       send cls{Enter}
       Return 
   ctrl & ?::
      send {alt down}{space down}{alt up}{space up}
      send {c}
      return
   alt & F4::
      send {bs 20}
      send exit
      sleep, 100
      send {enter}
      return
}
#IfWinActive

;qt creator
#IfWinActive, ahk_exe qtcreator.exe
{
        LControl & k::
          send {Up}
          return

        LControl & j::
          send {Down}
          return

        LControl & l::
          send {Pgdn}
          return

        LControl & o::
          send {PgUp}
          return

        lwin & o::
           ;send {ctrl down}{r down}{ctrl up}{r up}
            send {alt down}{b down}{alt up}{b up}
            send {up 3}
            send {Enter}
           return

        lalt & space::
           send {esc}
           return

        lwin & /::
           send {rctrl down}{/ down}{rctrl up}{/ up}
           return

        lwin & p::
           send {Appskey}{p}
           return

;temporary
::std::
   send std::
   return
::slot::
    send slot(
    return
::signal::
    send signal(
    return
::qdebug::
    send qdebug() <<
    return
::qassert::
   send q_assert(
   return
::qassertx::
  send q_assert_x(
  return
::qcheckptr::
  send q_check_ptr(
  return
::qunused::
  send q_unused(
  return
::q_object::
  send q_object
  return
::qobject::
  send qobject
  return
::qstring::
   send qstring
   return
::qdatetime::
   send qdatetime
   return
::qtcpsocket::
   send qtcpsocket
   return
::qtimer::
  send qtimer
  return
::qbytearray::
  send qbytearray
  return


;includes
::iinc::
  send {#}include `
  return
::iqmessagebox::
    send {#}include <qmessagebox>
    return
::iqsqldatabase::
    send {#}include <qsqldatabase>
    return
::iqsqlerror::
    send {#}include <qsqlerror>
    return
::iqsqlquery::
    send {#}include <qsqlquery>
    return
::iqdebug::
    send {#}include <qdebug>
    return
::iqtsql::
    send {#}include <qtsql>
    return
::iqtwidgets::
    send {#}include <qtwidgets>
    return
::iqstring::
    send {#}include <qstring>
    return
::iqcombobox::
    send {#}include <qcombobox>
    return
::iqtcore::
    send {#}include <qtcore>
    return
::iqtnetwork::
    send {#}include <qtnetwork>
    return
::iqdatetime::
    send {#}include <qdatetime>
    return
::ifstream::
    send {#}include <fstream>
    return
::iutility::
    send {#}include <utility>
    return
::ciso646::
    send {#}include <ciso646>
    return
::itypeinfo::
    send {#}include <typeinfo>
    return
::itypeindex::
    send {#}include <typeindex>
    return
::ifunctional::
    send {#}include <functional>
    return
::ilist::
    send {#}include <list>
    return
::iset::
    send {#}include <set>
    return
::ithread::
    send {#}include <thread>
    return
::ialgorithm::
    send {#}include <algorithm>
    return
::inumeric::
    send {#}include <numeric>
    return
::istring::
    send {#}include <string>
    return
;----- c headers -----
::icstdio:: 
    send {#}include <cstdio>
    return
::ictime::
    send {#}include <ctime>
    return
::icmath::
    send {#}include <cmath>
    return
::icassert::
    send {#}include <cassert>
    return
::iccomplex::
    send {#}include <ccomplex>
    return
::icctype::
    send {#}include <cctype>
    return
::icerrno::
    send {#}include <cerrno>
    return
::icfenv::
    send {#}include <cfenv>
    return
::icfloat::
    send {#}include <cfloat>
    return
::icinttypes::
    send {#}include <cinttypes>
    return
::iclimits::
    send {#}include <climits>
    return
::icsetjmp::
    send {#}include <csetjmp>
    return
::icsignal::
    send {#}include <csignal>
    return
::icstdalign::
    send {#}include <cstdalign>
    return
::icstdarg::
    send {#}include <cstdarg>
    return
::icstdbool::
    send {#}include <cstdbool>
    return
::icstddef::
    send {#}include <cstddef>
    return
::icstdint::
    send {#}include <cstdint>
    return
::icstdlib::
    send {#}include <cstdlib>
    return
::icstring::
    send {#}include <cstring>
    return
::ictgmath::
    send {#}include <ctgmath>
    return
::icuchar::
    send {#}include <cuchar>
    return
::icwchar::
    send {#}include <cwchar>
    return
::icwctype::
    send {#}include <cwctype>
    return
;;;;;  stl containers ;;;;;;;;;;;;;;;;;;
::iarray::
    send {#}include <array>
    return
::ibitset::
send {#}include <bitset>
    return
::ideque::
send {#}include <deque>
    return
::iforward_list::
send {#}include <forward_list>
    return
::imap::
send {#}include <map>
   return
::iqueue::
send {#}include <queue>
    return
::istack::
send {#}include <stack>
    return
::ivector::
send {#}include <vector>
    return
::iunordered_map::
send {#}include <unordered_map>
    return
::iunordered_set::
send {#}include <unordered_set>
    return

;;;;  algorithms iterators;;;;;;;;;
::ialgorithm::
send {#}include <algorithm>
    return
::iiterator::
send {#}include <iterator>
    return
::imemory::
send {#}include <memory>
    return
::iscoped_allocator::
send {#}include <scoped_allocator>
    return

;;;; general utilities ;;;;
::ichrono::
send {#}include <chrono>
    return
::icodecvt::
send {#}include <codecvt>
    return
::iinitializer_list::
send {#}include <initializer_list>
    return
::ilimits::
send {#}include <limits>
    return
::ilocale::
send {#}include <locale>
    return
::inew::
send {#}include <new>
    return
::irandom::
send {#}include <random>
    return
::iratio::
send {#}include <ratio>
    return
::iregex::
send {#}include <regex>
    return
::isystem_error::
send {#}include <system_error>
    return
::ituple::
send {#}include <tuple>
    return
::itype_traits::
send {#}include <type_traits>
    return
::itypeindex::
send {#}include <typeindex>
    return
::itypeinfo::
send {#}include <typeinfo>
    return
::icomplex::
send {#}include <complex>
    return
::ivalarray::
send {#}include <valarray>
    return
::iexception::
send {#}include <exception>
    return
::istdexcept::
send {#}include <stdexcept>
    return


;;;i iostreams ;;;
::ifstream::
send {#}include <fstream>
    return
::iiomanip::
send {#}include <iomanip>
    return
::iiosfwd::
send {#}include <iosfwd>
    return
::iistream::
send {#}include <istream>
    return
::iostream::
    send {#}include <ostream>
    return
::iiostream::
    send {#}include <iostream>
    return
::isstream::
send {#}include <sstream>
    return
::istreambuf::
send {#}include <streambuf>
    return
::itrstream::
send {#}include <strstream>
    return

;;;i threading ;;;
::iatomic::
send {#}include <atomic>
    return
::icondition_variable::
send {#}include <condition_variable>
    return
::ifuture::
send {#}include <future>
    return
::imutex::
send {#}include <mutex>
    return
::ishared_mutex::
send {#}include <shared_mutex>
    return
::ithread::
send {#}include <thread>
    return
;;;include tests
::usns::
  send using namespace
  return
}
#IfWinActive

;chrome
#IfWinActive, ahk_exe chrome.exe
{
        LControl & k::
          send {Up}
          return

        LControl & j::
          send {Down}
          return

        LControl & l::
          send {Pgdn}
          return

        LControl & o::
          send {PgUp}
          return

        ::cls::
          send clear()
          send {Enter}
          return
}
#IfWinActive

;shortcuts
lwin & F10::
  Run, "H:\Program Files (x86)\JetBrains\PyCharm 4.5.3\bin\pycharm.exe"
  return
lwin & F9::
  Run, "H:\Program Files (x86)\JetBrains\IntelliJ IDEA 12.1.5\bin\idea.exe"
  return
lwin & F8::
  Run, "H:\Program Files (x86)\JetBrains\WebStorm 8.0.4\bin\webstorm.exe"
  return
lwin & F7::
  Run, "H:\Program Files (x86)\JetBrains\CLion 1.0.5\bin\clion64.exe"
  return
lwin & F5::
  return
lwin & F4::
  return
lwin & F2::
  return
lwin & F1::
  return
rwin & F12::
  return
rwin & F11::
  return
rwin & F10::
  return
rwin & F9::
  return
rwin & F8::
  return
rwin & F7::
  return
rwin & F6::
  return
rwin & F5::
  return
rwin & F4::
  return
rwin & F3::
  return
rwin & F2::
  return
rwin & F1::
  return


;givm
#IfWinActive, ahk_exe gvim.exe
{
  lalt & space::
    send {esc}
    return
}
#IfWinActive

;pycharm
#IfWinActive, ahk_exe pycharm.exe
{
    LControl & j::
      send {Down}
      return

    LControl & k::
      send {Up}
      return

    LControl & l::
      Send {Pgdn}
      return

    LControl & o::
      Send {PgUp}
      return

    lwin & o::
      send {ctrl down}{shift down}{F10 down}{ctrl up}{shift up}{F10 up}
      return
    lwin & /::
      send {rctrl down}{/ down}{rctrl up}{/ up}
      return
    
    lalt & space::
      send {esc}
      return
    ;makes full screen
    lwin & esc::
      send {alt down}{v down}{alt up}{v up}
      send {up}
      send {enter}  
      return
    lwin & i::
      send {ctrl down}{shift down}{i down}{i up}{shift up}{ctrl up}
      return

    $j::
      if(ispersian()){
        sendinput {ت}
    	Return
      }

      if GetKeyState("Joy6")
      {
        sendinput {j}
        return
      }
      sendinput {j}
      return

    $space::
      if GetKeyState("Joy6")
      {
        sendInput {esc}
        return
      }
      sendInput {space}
      return
    

::ifname::
    send if __name__ == "__main__":
    return

::dinit::
    send def __init__(
    return

::dnew::
    send def __new__(
    return

::dgetitem::
    send def __getitem__(
    return 

::diter::
   send def __iter__(
   return

::dnext:: 
    send def __next__(
    return

::ddel::
    send def __del__(
    return

::dadd::
    send def __add__(
    return

::dor::
    send def __or__(
    return

::drepr:: 
    send def __repr__(
    return

::dstr::  
    send def __str__(
    return

::dcall::
    send def __call__(
    return 

::dgetattr::
    send def __getattr__(
    return

::dsetattr::
   send def __setattr__(
   return

::ddelattr::
  send def __delattr__(
  return

::dgetattribute::
  send  def __getattribute__(
  return

::dsetitem::
  send def __setitem__(
  return

::ddelitem::
    send def __delitem__(
    return

::dlen::
    send def __len__(
    return

::dbool::
   send def __bool__(
   return

::dlt::
    send def __lt__(
   return

::dgt::
    send def __gt__(
   return

::dle::
    send def __le__(
   return

::dge::
    send def __ge__(
   return

::deq::
    send def __eq__(
   return

::dne::
    send def __ne__(
   return

::dradd::
    send def __radd__(
   return

::diadd::
    send def __iadd__(
   return

::dcontains::
    send def __contains__(
   return

::dindex::
    send def __index__(
   return

::denter::
    send def __enter__(
   return

::dexit::
    send def __exit__(
   return

::dget::
    send def __get__(
   return

::dset::
   send def  __set__(
   return

::ddelete::
    send def __delete__(
    return
::iqtgui::
    send from PyQt4.QtGui import *
    return

;imports
::iqtcore::
    send from PyQt4.QtCore import *
    return

::ios::
   send import os
   return

::iosp::
  send  import os.path as osp
  return

::isys::
  send import sys
  return

;variables
::vtreew::
  send QTreeWidget()
  return

::vtablew::
  send QTableWidget()
  return

::vvboxl::
  send QVBoxLayout()
  return

::vgridl::
  send QGridLayout()
  return

::vhbox::
  send QHBoxLayout()
  return

::vstringlm::
  send QStringListModel()
  return

::vlistv::
  send QListView()
  return

::vdirm::
  send QDirModel()
  return

::vdialogbb::
  send QDialogButtonBox()
  return

::vtreev::
  send QTreeView()
  return

::vmodeli::
  send QModelIndex()
  return


::false::
    send False `
    send {bs 1}
    return

::true::True

::;-::
  send ____
  send {left 2}
  return

::s.::
  send self.
  return

;sqlalchemy
::;table::__tablename__="
::;column::
  send Column( `
  send {bs 1}
  return

;qt lib
::qle::
  send QLineEdit
  return

}
#IfWinActive

;clion
#IfWinActive, ahk_exe clion64.exe
{

   LControl & j::
      send {Down}
      return

    LControl & k::
      send {Up}
      return

    LControl & l::
      Send {Pgdn}
      return

    LControl & o::
      Send {PgUp}
      return

    lwin & o::
      send {shift down}{F10 down}{shift up}{F10 up}
      return
    
    lalt & space::
      send {esc}
      return
;temporary
::std::
   send std::
   return
::slot::
    send slot(
    return
::signal::
    send signal(
    return
::qdebug::
    send qdebug() <<
    return
::qassert::
   send q_assert(
   return
::qassertx::
  send q_assert_x(
  return
::qcheckptr::
  send q_check_ptr(
  return
::qunused::
  send q_unused(
  return
::q_object::
  send q_object
  return
::qobject::
  send qobject
  return
::qstring::
   send qstring
   return
::qdatetime::
   send qdatetime
   return
::qtcpsocket::
   send qtcpsocket
   return
::qtimer::
  send qtimer
  return
::qbytearray::
  send qbytearray
  return


;includes
::iinc::
  send {#}include `
  return
::iqmessagebox::
    send {#}include <qmessagebox>
    return
::iqsqldatabase::
    send {#}include <qsqldatabase>
    return
::iqsqlerror::
    send {#}include <qsqlerror>
    return
::iqsqlquery::
    send {#}include <qsqlquery>
    return
::iqdebug::
    send {#}include <qdebug>
    return
::iqtsql::
    send {#}include <qtsql>
    return
::iqtwidgets::
    send {#}include <qtwidgets>
    return
::iqstring::
    send {#}include <qstring>
    return
::iqcombobox::
    send {#}include <qcombobox>
    return
::iqtcore::
    send {#}include <qtcore>
    return
::iqtnetwork::
    send {#}include <qtnetwork>
    return
::iqdatetime::
    send {#}include <qdatetime>
    return
::ifstream::
    send {#}include <fstream>
    return
::iutility::
    send {#}include <utility>
    return
::ciso646::
    send {#}include <ciso646>
    return
::itypeinfo::
    send {#}include <typeinfo>
    return
::itypeindex::
    send {#}include <typeindex>
    return
::ifunctional::
    send {#}include <functional>
    return
::ilist::
    send {#}include <list>
    return
::iset::
    send {#}include <set>
    return
::ithread::
    send {#}include <thread>
    return
::ialgorithm::
    send {#}include <algorithm>
    return
::inumeric::
    send {#}include <numeric>
    return
::istring::
    send {#}include <string>
    return
;----- c headers -----
::icstdio:: 
    send {#}include <cstdio>
    return
::ictime::
    send {#}include <ctime>
    return
::icmath::
    send {#}include <cmath>
    return
::icassert::
    send {#}include <cassert>
    return
::iccomplex::
    send {#}include <ccomplex>
    return
::icctype::
    send {#}include <cctype>
    return
::icerrno::
    send {#}include <cerrno>
    return
::icfenv::
    send {#}include <cfenv>
    return
::icfloat::
    send {#}include <cfloat>
    return
::icinttypes::
    send {#}include <cinttypes>
    return
::iclimits::
    send {#}include <climits>
    return
::icsetjmp::
    send {#}include <csetjmp>
    return
::icsignal::
    send {#}include <csignal>
    return
::icstdalign::
    send {#}include <cstdalign>
    return
::icstdarg::
    send {#}include <cstdarg>
    return
::icstdbool::
    send {#}include <cstdbool>
    return
::icstddef::
    send {#}include <cstddef>
    return
::icstdint::
    send {#}include <cstdint>
    return
::icstdlib::
    send {#}include <cstdlib>
    return
::icstring::
    send {#}include <cstring>
    return
::ictgmath::
    send {#}include <ctgmath>
    return
::icuchar::
    send {#}include <cuchar>
    return
::icwchar::
    send {#}include <cwchar>
    return
::icwctype::
    send {#}include <cwctype>
    return
;;;;;  stl containers ;;;;;;;;;;;;;;;;;;
::iarray::
    send {#}include <array>
    return
::ibitset::
send {#}include <bitset>
    return
::ideque::
send {#}include <deque>
    return
::iforward_list::
send {#}include <forward_list>
    return
::imap::
send {#}include <map>
   return
::iqueue::
send {#}include <queue>
    return
::istack::
send {#}include <stack>
    return
::ivector::
send {#}include <vector>
    return
::iunordered_map::
send {#}include <unordered_map>
    return
::iunordered_set::
send {#}include <unordered_set>
    return

;;;;  algorithms iterators;;;;;;;;;
::ialgorithm::
send {#}include <algorithm>
    return
::iiterator::
send {#}include <iterator>
    return
::imemory::
send {#}include <memory>
    return
::iscoped_allocator::
send {#}include <scoped_allocator>
    return

;;;; general utilities ;;;;
::ichrono::
send {#}include <chrono>
    return
::icodecvt::
send {#}include <codecvt>
    return
::iinitializer_list::
send {#}include <initializer_list>
    return
::ilimits::
send {#}include <limits>
    return
::ilocale::
send {#}include <locale>
    return
::inew::
send {#}include <new>
    return
::irandom::
send {#}include <random>
    return
::iratio::
send {#}include <ratio>
    return
::iregex::
send {#}include <regex>
    return
::isystem_error::
send {#}include <system_error>
    return
::ituple::
send {#}include <tuple>
    return
::itype_traits::
send {#}include <type_traits>
    return
::itypeindex::
send {#}include <typeindex>
    return
::itypeinfo::
send {#}include <typeinfo>
    return
::icomplex::
send {#}include <complex>
    return
::ivalarray::
send {#}include <valarray>
    return
::iexception::
send {#}include <exception>
    return
::istdexcept::
send {#}include <stdexcept>
    return


;;;i iostreams ;;;
::ifstream::
send {#}include <fstream>
    return
::iiomanip::
send {#}include <iomanip>
    return
::iiosfwd::
send {#}include <iosfwd>
    return
::iistream::
send {#}include <istream>
    return
::iostream::
    send {#}include <ostream>
    return
::iiostream::
    send {#}include <iostream>
    return
::isstream::
send {#}include <sstream>
    return
::istreambuf::
send {#}include <streambuf>
    return
::itrstream::
send {#}include <strstream>
    return

;;;i threading ;;;
::iatomic::
send {#}include <atomic>
    return
::icondition_variable::
send {#}include <condition_variable>
    return
::ifuture::
send {#}include <future>
    return
::imutex::
send {#}include <mutex>
    return
::ishared_mutex::
send {#}include <shared_mutex>
    return
::ithread::
    send {#}include <thread>
    return
;;;test includes
::usns::
  send using namespace
  return
/*
    lwin & /::
      send {Home}{Home}
      send //
      return
*/


}
#IfWinActive

/*
#IfWinActive, ahk_exe Launchy.exe
{

}
#IfWinActive
*/
;ipython
#IfWinActive, ahk_exe ipython.exe
{
:*:;-::
 send ____
 send {left 2}
 return
}
#IfWinActive

;spyder ide 
/*
;not working
$j::
  if(ispersian()){
    sendinput {ت}
	Return
  }

  if GetKeyState("Joy6")
  {

    WinGetActiveTitle, Title
    ifInString, Title, %I_mindmanager%
    {
      SendInput {Down}
      return
    }
    ifInString, Title, %I_acrobatreader%
    {
      SendInput {Down}{Down}{Down}
      return
    }
    ;for chm files
    IfWinActive ahk_class HH Parent
    {
      SendInput {Down}
      return
    }

    ;Qt5QWindowIcon
    IfWinActive ahk_class   Qt5QWindowIcon
    {
      SendInput {Down}
      return
    }
    ;explorer
    IfWinActive ahk_class CabinetWClass
    {
      SendInput {Down}
      return
    }	
    ;code blocks
    ifWinActive ahk_class wxWindowClassNR
    {
      SendInput {Down}
      return
    }
    IfInString, Title, %I_visualstudio%
    {
      SendInput {Down}
      return
    }

    if hj = 1
    {
      SendInput {Down}
      hj = 0
    } else{
      hj = 1
    } 
  }
  else
  {
    Send {j}
  }
  return
*/
/*
#IfWinActive, ahk_class QWidget
{
lctrl & j::
    msgbox , "hey"
    send {Down 10}
    return
}
#IfWinActive
*/

;eclipse ide
#IfWinActive, ahk_exe eclipse.exe
{
    LControl & j::
      send {Down}
      return

    LControl & k::
      send {Up}
      return

    LControl & l::
      Send {Pgdn}
      return

    LControl & o::
      Send {PgUp}
      return 
  
    lwin & o::
      Send {rctrl down}{F11 down}{rctrl up}{F11 up}
      return
    
    LAlt & .::
      send {ctrl down}{pgdn down}{ctrl up}{pgdn up}
      return
    ;variables
    ::vd::
      Send double `
      return
    ::vi::
      send int `
      return
    ::vs::
      send String `
      return
    ::vf::
          send float `
          return
    ::vb::
          send byte `
          return
    ::vc::
      send char `
      return
    ::vpd::
      send public double
      return
    ::vpf::
      send public float
      return
    ::vpi::
      send public int
      return
    ::vps::
      send public String
      return
    ::vpc::
      send public char
      return
    ::vpb::
      send public byte
      return
    ::vprd::
      send private double
      return
    ::vprf::
      send private float
      return
    ::vpri::
      send private int
      return
    ::vprs::
      send private String
      return
    ::vprc::
      send private char
      return
    ::vprb::
      send private byte
      return

    ::;str::
       SendInput String `
       return
    ::string::
       send String `
       return

    :b1:elif::
       SendInput else if `
       return

    :b1:println::
        SendInput System.out.println(
        return

    ::psv::
      send public static void `
      return

    ::pv::public void
}
#IfWinActive


;intelij
#IfWinActive, ahk_exe idea.exe
{
    LControl & j::
      send {Down}
      return

    LControl & k::
      send {Up}
      return

    LControl & l::
      Send {Pgdn}
      return

    LControl & o::
      Send {PgUp}
      return

    LWin & o::
      Send {shift down}{F10 down}{F10 up}{shift up}
      return

    lwin & j::
      send {rctrl down}{j down}{rctrl up}{j up}
      return

    lalt & space::
      send {ESC}
      return

    lwin & /::
      send {lctrl down}{/ down}{lctrl up}{/ up}
      return
/*
:*:println::System.out.println(

:*:;str::String `
:*:elif::else if `
*/

;variables
::vd::
  Send double `
  return
::vi::
  send int `
  return
::vs::
  send String `
  return
::vf::
  send float `
  return
::vb::
  send byte `
  return
::vc::
  send char `
  return
::vpd::
  send public double
  return
::vpf::
  send public float
  return
::vpi::
  send public int
  return
::vps::
  send public String
  return
::vpc::
  send public char
  return
::vpb::
  send public byte
  return
::vprd::
  send private double
  return
::vprf::
  send private float
  return
::vpri::
  send private int
  return
::vprs::
  send private String
  return
::vprc::
  send private char
  return
::vprb::
  send private byte
  return

::vlis::
  send List<String>
  return
::vplis::
  send public List<String>
  return
::vprlis::
  send private List<String>
  return
::vlii::
  send List<int>
  return
::vplii::
  send public List<int>
  return
::vprlii::
  send private List<int>
  return
::vlif::
  send List<float>
  return
::vplif::
  send public List<float>
  return
::vprlif::
  send private List<float>
  return
::vlid::
  send List<double>
  return
::vplid::
  send public List<double>
  return
::vprlid::
  send private List<double>
  return
::vlic::
  send List<char>
  return
::vplic::
  send public List<char>
  return
::vprlic::
  send private List<char>
  return

::;str::
   SendInput String `
   return
::string::
   send String `
   return

:b1:elif::
   SendInput else if `
   return

:b1:println::
    SendInput System.out.println(
    return

::psv::
  send public static void `
  return

::pv::public void
}
#IfWinActive

#IfWinActive, ahk_exe onenote.exe
{
/*
lctrl & j::
      msgbox "in one note"
      send {Pgdn}
      return
*/

lwin & i::
     Send {alt down}{d down}{alt up}{d up}
     Send {alt down}{c down}{alt up}{c up}
     sleep, 100
     send {Enter}
     return
}
#IfWinActive

;_______________-Tested_Working________
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

lwin & `::
  Reload
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#w::
;TrayTip, My Title, Multiline`nText, 20, 17
     ListHotkeys
     return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#PrintScreen::
  Run H:\mybase\myscripts\connect.vbs
  return

+#PrintScreen::
  Run H:\mybase\myscripts\disconnect.vbs
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LAlt & .::
  Send {End}
  Send +{Home}
  send {Del}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LAlt & j::
    Send ^{backspace}
    return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LAlt & H::
    send {backspace}
    return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LAlt & k::
    send ^{Del}
    return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LAlt & l::
    send {Del}
    return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LAlt & ,::
  Send {Ctrl Down}{Tab Down}{Ctrl Up}{Tab Up}
  ;Send ^{Tab}
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LControl & h::
     send ^{left}
     return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LControl & `;::
     send ^{right}
     return

LControl & ?::
;  Send {Alt down}{F4 down}{F4 up}{Alt up}
     send !{F4}
     return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LControl & ,::AltTab
     ;send {Alt down}{Tab down}{Tab up}{Alt up}
     ;return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LWin & Numpad9::
     Run,  %gvimAddress% %scriptAddress%
     return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LWin & F12::
    if winexist("ahk_exe anki.exe")
    {
      WinClose, Anki - User 1
      WinWaitClose
    }
    Run, %ankiPath%  -b h:\anki\, ,max
    return

Lwin & F11::
    Run, %firefoxPath%
    return

SC10B::
  send	#+{right}
  return 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#z::
  Run, C:\Program Files (x86)\Everything\Everything.exe
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!`::
IfWinNotExist, Add
{
    return
}
else
{
    WinGet, activewindow ,ID, A
    SetTitleMatchMode, 1
    WinActivate, Add
    ;WinActivate  ; The above "IfWinNotExist" also set the "last found" window for us.
  ;  WinMove, 40, 40  ; Move it to a new position.
    Send !o
    sleep, 100
    send {win down}{up down}{win up}{up up}
    SetTitleMatchMode, 2
    return
}

#IfWinActive, Image Occlusion Editor
{
  ESC::
    click 28,424
    sleep 300

    send !{F4}
    sleep, 300
    WinActivate, ahk_id %activewindow%

    return
}
#IfWinActive

;anki
#IfWinActive, ahk_exe anki.exe
{
`::
  send {1}
  return
left::
  send {1}
  return
right::
  send {2}
  return
down::
  send {Space}
  counter += 1
  return

F1::
	send {alt down}{shift down}
        send {alt up}{shift up}
	sleep 200
        send {ctrl down}{enter down}
        send {ctrl up}{enter up}
	return
tab::
   send {alt down}{shift down}
   send {alt up}{shift up}
   send {tab}
   return

joy6::
  send {space}
  return


}
#IfWinActive


;brain workshop
#IfWinActive, Brain Workshop
{
right::
  send {l}
  return
left::
  send {a}
  return
MButton::
  Send {Space}
  return   
down::
  send {Space}
  return
}
#IfWinActive

;============================================

;supermemo
#IfWinActive, SuperMemo UX
{
right::
  send {Numpad6}
  return
left::
  send {Numpad4}
  return
}
#IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;everything
#IfWinActive, ahk_exe Everything.exe
{
    LControl & j::
      send {Down}
      return

    LControl & k::
      send {Up}
      return

    LControl & l::
      Send {Pgdn}
      return

    LControl & o::
      Send {PgUp}
      return 
}
#IfWinActive
/*
;qtcreator
;add qt exe add here
#IfWinActive, ahk_exe abcdefghijklmnopq.exe
{
  lalt & space::
      send {esc}
      return
  lwin &  o::
      send ^{r}
      return
:*:qstring::QString
:*:qtextstream::QTextStream
:*:;dir::QDir::

:*:qdir::QDir
:*:signal::SIGNAL
:*:slot::SLOT

}
*/
#IfWinActive
;SumatraPDF
#IfWinActive, ahk_exe SumatraPDF.exe
{
    j::
      send {down 12}
      return 

    k::
      send {up 12}
      return

    [::
      send ^{NumpadAdd}
      return

    ]::
      send ^{NumpadSub}
      return

    l::
      Send {Pgdn}
      return

    o::
      Send {PgUp}
      return
}
#IfWinActive

;codeblocks
#IfWinActive, ahk_exe codeblocks.exe
{
     LControl & j::
      send {down}
      return 

    LControl & k::
      send {up}
      return

    LControl & l::
      Send {Pgdn}
      return

    LControl & o::
      Send {PgUp}
      return
}
#IfWinActive

;windows explorer
#IfWinActive, ahk_exe explorer.exe
{
    LControl & j::
      send {down}
      return 

    LControl & k::
      send {up}
      return

    LControl & l::
      Send {Pgdn}
      return

    LControl & o::
      Send {PgUp}
      return

    LControl & [::
      send {Home}
      return

    LControl & ]::
      send {End}
      return

    ;ctrl+home
    LControl & -::
      send {ctrl down}{home down}{ctrl up}{home up}
      return
    ;ctrl+end
    LControl & +::
      send {ctrl down}{end down}{ctrl up}{end up}
      return

    lwin & o::
      Send, ^c
      Run %gvimAddress% %clipboard%, ,Max
      FullFileName =%clipboard%
      SplitPath, FullFileName, file_name
      sleep 500
      WinActivate, %file_name%
      return
}
#IfWinActive

;acrobat reader
#IfWinActive, ahk_exe AcroRd32.exe
{
    j::
      send {down 12}
      return 

    k::
      send {up 12}
      return

    [::
      send ^{NumpadAdd}
      return

    ]::
      send ^{NumpadSub}
      return

    l::
      Send {Pgdn}
      return

    o::
      Send {PgUp}
      return
}
#IfWinActive

;foxit reader
#IfWinActive ahk_exe FoxitReader.exe
{
    j::
      send {down 3}
      return 

    k::
      send {up 3}
      return
    l::
      send {pgdn}
      return
    o::
      send {pgup}
      return
    [::
      send ^{NumpadAdd}
      return

    ]::
      send ^{NumpadSub}
      return

joy6::
    send {down 2}
    return
}
#IfWinActive

;launchy
#IfWinActive, ahk_exe Launchy.exe
{
    LControl & k::
       send {Up}
       return

    LControl & j::
       send {Down}
       return

    LControl & l::
       Send {Pgdn}
       return

    LControl & o::
       Send {PgUp}
       return

    ::mybase::
       send H:\mybase
       return
    ::myscripts::
      send H:\mybase\myscripts\
       return
    ::c++::
        send H:\mybase\Mybooks\COMPUTER\PROGRAMMING\C++\
       return
    ::linux::
      send H:\mybase\Mybooks\COMPUTER\OPERATING SYSTEM\LINUX
       return
    ::python::
        send H:\mybase\Mybooks\COMPUTER\PROGRAMMING\python
       return
    ::c++reading::
        send H:\mybase\Mybooks\COMPUTER\PROGRAMMING\C++\reading
       return
    ::c++qt::
        send H:\mybase\Mybooks\COMPUTER\PROGRAMMING\C++\qt
       return
    ::downloads::
      send C:\Users\admin\Downloads
       return
    ::aghasi::
       send H:\music\Irani\Full.Album\Man\Aghasi
       return
    ::progs::
        send C:\Users\admin\Desktop\prog.shortcuts
       return
    ::music::
        send h:\music
       return
    ::developer::
      send E:\developing.tools
       return
    ::breaking::
        send H:\Breaking Bad Season 1-5\
       return
    ::myscripts::
      send h:\mybase\myscripts\
       return
    ::;d::
       send d:\
       return
    ::;c::
      send c:\
       return
    ::;e::
      send e:\
       return
    ::;f::
       send f:\
       return
    ::;h::
      send h:\
      return
}
#IfWinActive

 
;winrar
#IfWinActive, ahk_exe WinRAR.exe
{
  LControl & j::
    Send {Down}
    return
  LControl & k::
    Send {Up}
    return
  LControl & l::
    Send {Pgdn}
    return
  LControl & o::
    Send {PgUp}
    return
}
#IfWinActive

;firefox
#IfWinActive, ahk_exe Firefox.exe
{
        lwin & j::
          send {End}{Shift down}{home}{Shift up}
          send ^{c}
          send {End}
          return

        ^Insert::
           send ^t
           Return 

        LControl & k::
          send {Up}
          return

        LControl & j::
          send {Down}
          return

        LControl & l::
          send {Pgdn}
          return

        LControl & o::
          send {PgUp}
          return

        LControl & -::
          send {Home}
          return
        LControl & +::
          send {End}
          return

        lwin & n::
          send {home}
          sleep 100
          MouseMove, 686, 338
          sleep 100
          click
          return
        lwin & p::
          send {home}
          sleep 100
          MouseMove, 659,336
          sleep 100
          click
          return

      ^Delete::
             send ^w
             Return 

      ^Left::
             send +{Tab}
             Return 

      ^right::
             send {Tab}
             Return 
/*
       !+,::
            send  ^+{Tab}
            return
*/
/*
       !space::
             Send {Esc}
             Return 
/*
       $`::
            if(GetKeyState("Joy6")){
                     Send {Appskey}{down}{down}{down}{Enter}
            }else{
               Send {``}
            }
            return 

       $j::
            if(ispersian()){
                if(GetKeyState("Joy6")){
                  Send {Down 3}
                  return
                }
                sendinput {ت}
                Return
              }

             if(GetKeyState("Joy6")){
                  Send {down 3}
             }else{
                  Send {j}
             }
            return

       $k::
            if(ispersian()){
                if(GetKeyState("Joy6")){
                  Send {up 3}
                  return
                }
                sendinput {ن}
                Return
              }

         if(GetKeyState("Joy6")){
              Send {up 3}
         }else{
              Send {k}
         }
        return

       $o::
          if(ispersian()){
                if(GetKeyState("Joy6")){
                  Send {PgUp}
                  return
                }
                SendInput {خ}
                return
          }

          if(GetKeyState("Joy6")){
              Send {PgUp}
          }else{
              Send {o}
          }
          return
*/
}
#IfWinActive

;Internet Download Manager
#IfWinActive, ahk_exe IDMan.exe
{
  d::
    Send {AppsKey}
    Send {R}
    Send {Enter}
    return

  Enter::
    if GetKeyState("Joy6"){
         Send {AppsKey}{Down}{Enter}
         return
    }else{
         Send {Enter}
    }
  return

   LControl & j::
      send {Down}
      return
   LControl & Enter::
      send {AppsKey}{Down}{Enter}
      return

    LControl & k::
      send {Up}
      return

}
#IfWinActive
;chm help files
#IfWinActive, ahk_exe hh.exe
{
        LControl & k::
          send {Up}
          return

        LControl & j::
          send {Down}
          return

        LControl & l::
          send {Pgdn}
          return

        LControl & o::
          send {PgUp}
          return

        LControl & -::
          send {Home}
          return
}
#IfWinActive

;cambridge academic content dictionary
#IfWinActive, ahk_exe cacd.exe
{
    lwin & i::
      MouseMove, 143,135
      click
      Send {End}{Shift down}{Home}{Del}{Shift up}
      return
}
#IfWinActive
/*
;_______________- test -_______________
lwin & F3::
    listvars    
    return

lwin & F4::
     Run, "D:\Program Files (x86)\SuperMemo UX\supermemo.exe"
     return

lwin & F5::
    Run, "H:\Program Files (x86)\Microsoft Office\Office15\ONENOTEM.EXE"," /tsr"
    return

;command prompt
lwin & F6::
    Run,Cmd
    return



;adobe acrobat reader
#IfWinActive, ahk_exe AcroRd32.exe
{
  lwin & i::
     send +{F4}
     return
}
#IfWinActive 
/*
*/
/*
;visual studio 2012
lwin & F7::
   Run, "H:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE\devenv.exe"
   return

;visual studio 2013
lwin & F8::
   Run, "H:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"
   return
/*

#IfWinActive ahk_class AcrobatSDIWindow
{
  ;hide navigation panel buttons
  #h::
    WinMaximize
    send {F4}
    MouseMove 7, 379
    click right 
    send {down 9}{Enter}{F8}{F9}
    return 
}
#IfWinActive
*/

;showing shortuct summary
;http://stackoverflow.com/questions/12684703/displaying-list-of-autohotkey-hotkeys

/*
#F2::
final = 
final .= "key" . "`t" . "`t"  . "action" . "`t" . "`t" 
final .= "key" . "`t" . "`t"  . "action" . "`n"
 Loop
{
    a = 1
    FileReadLine, line,  %A_ScriptFullPath%, %A_Index%
    if ErrorLevel
        break
    If Instr(line, ";!!")
    {
        If !Instr(line,"If")
	{
  	  StringTrimLeft, tempstr, line, 3
          final .= tempstr . "`t" 
	  if(a mod 2 = 0){
	    final .= "`n"
	  }else{
            final .= "`t"
	  }
	}
  
/*
        StringSplit, linearray, line, ::,

        key := linearray1
        StringSplit, commandarray, linearray3, `;

        action := commandarray2

        hotkeyline := "key:  " . key . "`tAction:  " . action
        final .= hotkeyline . "`r"
*/
/*
    }
}
msgbox % final

return

*/

; ctrl + space +  alphabetic key
/*
^space::
  Send {Space}{Space}
  return
*/
/*
lwin & q::
    send !{F4}
    return

^space::
    Loop {
        if(GetKeyState("j")){
              MsgBox "hello from j"
   	      return
	}
	if(GetKeyState("k")){
	    MsgBox "hello from k"
	    return
	}
        if(GetKeyState("'")) {
            send {left}
            send {shift down}{end}
            send {shift up}
            break
        }
        if(!GetKeyState("CTRL") || !GetKeyState("SPACE")) {
            return
        }
        Sleep, 50
    }
return

;key sequence
;ctrl + r -> ctrl up -> t
^r::
  Input Key, L1
  if Key=t
     MsgBox "hey"
  return

;key sequnce
; ctrl down -> q down > q up -> f down -> f up -> ctrl up
/*
$Ctrl::Send {Ctrl Down}
$Ctrl UP::
    ChordIsBroken := True
    Send {Ctrl Up}
    Return

^q::
    ChordIsBroken := False
    Input, OutputVar, L1 M
    If (!ChordIsBroken && Asc(OutputVar) = 6)
    {
        MsgBox "Hello, World!"
    }
    Else
    {
        SendInput %OutputVar%
    }
    Return
*/
/*
;_____________- joystick -_____________
#IfWinActive,ahk_exe IDMan.exe
{

}
#IfWinActive

;!!j6-f	        c-f
$f::
  if(ispersian()){
    sendinput {ب}
	Return
  }

  if GetKeyState("Joy6")
  { 
     Send ^{f} 
     return
  }
  else
  {
     Send {f}
  } 
  return

;!!j6-j		down  
/*
$F11::
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  ;MsgBox, %InputLocaleID%
  if InputLocaleID = 0x4290429
    sendInput {ب}
    Return
*/
/*
$=::
  if GetKeyState("Joy6")
    Send {End} 
  else
    Send {=}
  return

$-::
  if GetKeyState("Joy6")
    Send {Home}
  else
     Send {-}
  return

$o::
  if(ispersian()){
     SendInput {خ}
     return
   }
   WinGetActiveTitle, Title
  IfInString, Title, %I_acrobatreader%
  {
     send {PgUp}
     return
  }
  if GetKeyState("Joy6")
    Send {PgUp} 
  else
    Send {o}
  return

$j::
  if(ispersian()){
    sendinput {ت}
	Return
  }

  if GetKeyState("Joy6")
  {

    WinGetActiveTitle, Title
    ifInString, Title, %I_mindmanager%
    {
      SendInput {Down}
      return
    }
    ifInString, Title, %I_acrobatreader%
    {
      SendInput {Down}{Down}{Down}
      return
    }
    ;for chm files
    IfWinActive ahk_class HH Parent
    {
      SendInput {Down}
      return
    }

    ;Qt5QWindowIcon
    IfWinActive ahk_class   Qt5QWindowIcon
    {
      SendInput {Down}
      return
    }
    ;explorer
    IfWinActive ahk_class CabinetWClass
    {
      SendInput {Down}
      return
    }	
    ;code blocks
    ifWinActive ahk_class wxWindowClassNR
    {
      SendInput {Down}
      return
    }
    IfInString, Title, %I_visualstudio%
    {
      SendInput {Down}
      return
    }

    if hj = 1
    {
      SendInput {Down}
      hj = 0
    } else{
      hj = 1
    } 
  }
  else
  {
    Send {j}
  }
  return


;!!j6-k	        c-k
$k::
  if(ispersian()){
    sendinput {ن}
	Return
  }
  WinGetActiveTitle, Title
  ifInString, Title, %I_acrobatreader%
  {
    SendInput {UP}{UP}{UP}{UP}
    return
  }

  if GetKeyState("Joy6")
    Send {Up} 
  else
    Send {k}
  return  

;!!j6-t            c-t
$t::
  if(ispersian()){
    sendinput {ف}
	Return
  }
  if GetKeyState("Joy6")
    Send ^{t}
  else
    Send {t}
  return  

;!!j6-l            ->
$l::
 if(ispersian()){
    sendinput {م}
	Return
  }
  WinGetActiveTitle, Title
  IfInString ,Title, %I_acrobatreader%
  {
     send {Pgdn}
     return
  }
  if GetKeyState("Joy6")
    Send {right} 
  else
    Send {l}
  return

;!!j6-h            <-
$h::
if(ispersian()){
    sendinput {ا}
	Return
  }
  if GetKeyState("Joy6")
    Send {left} 
  else
    Send {h}
  return



;!!j6-'            c-->
$'::
  if(ispersian()){
   SendInput {گ}
   return
  }
  if GetKeyState("Joy6")
  {
    Send ^{right}
  }
  else
  {
    Send {'}
  }
  return  

;!!j6-/            a-F4
$/::
  if GetKeyState("Joy6")
  {
    Send {Alt down}{F4 down}{Alt up}{F4 up}
  }
  else
  {
    Send {/}
  }
  return  

$n::
if(ispersian()){
    sendinput {د}
	Return
  }
  if GetKeyState("Joy6")
  {
    Send ^{n}
  }
  else
  {
    Send {n}
  }
  return

$,::
  if(ispersian()){
    if GetKeyState("Joy6"){
         send {alt down}{tab down}{Tab up}{Alt up}
      }else{
      sendinput {و}
    }
    return
  }

  if GetKeyState("Joy6")
  {
     send {alt down}{tab down}{Alt up}{tab up}
  }
  else
  {
    Send {,}
  }
  return

$d::
  if(ispersian()){
        sendinput {ي}
	Return
  }
  if GetKeyState("Joy6")
    Send ^{d}
  else
    Send {d}
  return

$u::
  if(ispersian()){
       SendInput {ع}
       return 
   }
   WinGetActiveTitle, Title
   IfInString, Title, %I_acrobatreader%
   {
      SendInput {PgUp}
      return
   }

  if GetKeyState("Joy6")
    Send ^{u}
  else
    Send {u}
  return
$i::
  if(ispersian()){
      SendInput {ه}
      return
  }
  WinGetActiveTitle, Title
  IfInString, Title, %I_acrobatreader%
  {
      SendInput {Pgdn}
      return
  }
  send {i}
  return


$e::
  if(ispersian()){
       SendInput {ث}
       return
  }
  
  if GetKeyState("Joy6")
    Send ^{e}
  else
    Send {e}
  return
SC126::
  MsgBox "eee"
  return 
SC128::
  MsgBox "ffff"
  return 
/*
SC10B::
  send ^+{esc}
  return
*/
/*
#l::
  click
  return
#i::
;   MouseGetPos, xpos, ypos
;   MouseMove, xpos , ypos - 20
    MouseMove, 0, -20, 0,R
   return 
#h::
   MouseMove, 10, 0, 0, R
   return 
*/
;_______________________________
/*
#Numpad1::
SplashTextOn, 400, 300, Clipboard, The clipboard contains:`n%clipboard%
WinMove, Clipboard, , 0, 0 ; Move the splash window to the top left corner. 
Msgbox, Press OK to dismiss the SplashText
SplashTextOff
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,Rbutton>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Rwin & Lbutton::
;    send 
;    return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,Rbutton>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^Rbutton::
    send #+{right}
   ; send {win down}{right down}{win up}{right up}
 
    return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,/>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Lwin & /::
  Send !{F12}
  return 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <a,+>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & =::
  Send {End}
  return 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <a,->
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & -::
  Send {Home}
  return 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <a,?>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!/::
  send ^{F4}
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <c,.>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & [::
  send {Esc}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <c,?>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & ]::
  Send {Esc}
  return
  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <a,.>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <a-.>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, ahk_exe IDMan.exe
{
^Enter::
  Send {AppsKey}{Down}{Enter}
  return 
}
#IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <a,;>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!;::
  SendInput {Enter}
  return

  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <a,'>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!'::
  Send {Tab}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <a,l>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!l::
  SendInput {del}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <a,h>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!h:: 
  SendInput {backspace}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <a,j>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
!j::
  SendInput ^{backspace}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <a,k>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
!k::
  SendInput ^{delete}
  return 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & h::
  Send {left}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <c,.>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & .::
   send {PgDn}
   return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <c-o>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & o::
    send {PgUp}
    return             
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <c-;>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & `;::
  if(GetKeyState("space")){
    send {Shift down}{Home}
    send {Shift up}
    return
  }
  Send {Home}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <c-'>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ctrl & '::
  if(GetKeyState("space"))
   {
      send {shift down}{end}
      send {Shift up}
      return
   }
  Send {End}
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <c,l>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
*/
/*

*/
/*
^l::
  WinGetActiveTitle, Title
  ifInString, Title, %I_mindmanager%
  {
    SendInput {RIGHT}
    return
  }
  ;send ^{x}{up}{home}^{v}{Enter}{up}{end}+{home}
  ; send ^{x}^{del}{up}{home}{enter}{up}^{v}{end}+{home}
  send {right}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,]>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#]::
  ;send ^{x}{up}{home}^{v}{Enter}{up}{end}+{home}
  ; send ^{x}^{del}{up}{home}{enter}{up}^{v}{end}+{home}
  send ^{v}
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,[>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#[::
  ;send ^{x}{up}{home}^{v}{Enter}{up}{end}+{home}
  ; send ^{x}^{del}{up}{home}{enter}{up}^{v}{end}+{home}
  send ^{x}
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,'>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#'::
  send ^+{Left}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,;>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#;::
  send ^+{Right}
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <a,?>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        rbutton
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, SuperMemo UX
{
RButton::
  send {Enter}
  return
}
#IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        lbutton
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, SuperMemo UX
{
LButton::
  send {Numpad4}
  return
}
#IfWinActive
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        mbutton
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, SuperMemo UX
{
MButton::
  send {click}
  return
}
#IfWinActive


*/
/*
;change process priority
lwin & F1::
  WinGet, active_pid, PID, A
  WinGetTitle, active_title, A
  MsgBox %active_title% 
  
  return
*/
   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        #pgup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Pgup::

WinGet, active_pid, PID, A
WinGetTitle, active_title, A
Gui, 5:Add, Text,, Press ESCAPE to cancel, or double-click a new`npriority level for the following window:`n%active_title%
Gui, 5:Add, ListBox, vMyListBox gMyListBox r5, Normal|High|Low|BelowNormal|AboveNormal|RealTime
Gui, 5:Add, Button, default, OK
Gui, 5:Show,, Set Priority
return

5GuiEscape:
5GuiClose:
Gui, Destroy
return

MyListBox:
if A_GuiEvent <> DoubleClick
    return
; else fall through to the next label:
5ButtonOK:
GuiControlGet, MyListBox
Gui, Destroy
Process, Priority, %active_pid%, %MyListBox%
if ErrorLevel
    MsgBox Success: Its priority was changed to "%MyListBox%".
else
    MsgBox Error: Its priority could not be changed to "%MyListBox%".
return
/*
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        #i
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive, Qt Creator
{
  #i::
    send !{v}
    send !{v}
    return
}
#IfWinActive

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
*/
;============================================	      									      	    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        ;esc
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
*/
/*
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        ;Numpad9
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#-F11>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#F11::
   Run,"D:\Qt\Qt5.3.2\Tools\QtCreator\bin\qtcreator.exe" 
   return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#-F12>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <a, space>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
#IfWinActive, Microsoft Visual Studio
{
       !space:: Send {Esc}	
       Return 
}
#IfWinActive

#IfWinActive,  Qt Creator
{
    !space:: Send {Esc}
    return 
}
*/
/*

;visual studio
#IfWinActive, ahk_exe devenv.exe
{
    !space::
      MouseMove 908,169
      send {Esc} 
      return
/*
    lwin & j::
      if (ShiftDownCounter > 0){
          Send {Shift down}{down}
          Send {End}
          Send {Shift up}
          return
      }
      Send {Home}
      Send {Shift down}{end} 
      Send {Shift up}
      ShiftDownCounter += 1 
      return
*/
/*
    lwin & j::
      if(ShiftDownCounter > 0){
          Send {Shift down}{down}
          Send {End}
          Send {Shift up}
          Send ^{c}
          if(!GetKeyState("lwin")){
             ShiftDownCounter = 0
          }
          return
      }
      Send {Home}
      Send {Shift down}{end} 
      Send {Shift up}
      Send ^{c}
      ShiftDownCounter +=1
      return

    lwin & k::
      if(ShiftDownCounter > 0){
          Send {Shift down}{up}
          Send {Home}
          Send {Shift up}
          Send ^{c}
          if(!GetKeyState("lwin")){
             ShiftDownCounter = 0
          }
          return
      }
      Send {Home}
      Send {Shift down}{end}
      Send {Shift up}
      Send ^{c}
      ShiftDownCounter +=1
      return
    lwin & h::
      Send ^+{left}
      return
    lwin & l::
      Send ^+{right}
      return
}
#IfWinActive 

!space::
    Send {Esc}
    return 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;        <#,o>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Explorer
#IfWinActive ahk_class CabinetWClass
{
  
   lwin & n::
      Send {Alt down}{f}{w}
      Send {T}
      Send {Alt up}
      return
}
#IfWinActive

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <c-down> 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^down::
  send {PgDn}
  return 
;       <c,delete>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       <c,j>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;visual studio select file dialog
#IfWinActive, ahk_class #32770
{
ctrl & j::
    send {Down}
    return 
}
#IfWinActive 
*/


/*
#IfWinActive, SumatraPDF 
{
ctrl & j::
       send {Down}{Down}{Down}{Down}
       Return 
}
#IfWinActive

#IfWinActive, ahk_class QTool
ctrl & j::
       send {Down}
       return
#IfWinActive
*/

; one_note

/*

ctrl & j::

  WinGetActiveTitle, Title
  ifInString, Title, %I_mindmanager%
  {
    SendInput {Down}
    return
  }
  ifInString, Title, %I_acrobatreader%
  {
    SendInput {Down}{Down}{Down}
    return
  }
  ;for chm files
  IfWinActive ahk_class HH Parent
  {
    SendInput {Down}
    return
  }

  ;Qt5QWindowIcon
  IfWinActive ahk_class   Qt5QWindowIcon
  {
    SendInput {Down}
    return
  }
  ;explorer
  IfWinActive ahk_class CabinetWClass
  {
    SendInput {Down}
    return
  }	
  ;code blocks
  ifWinActive ahk_class wxWindowClassNR
  {
    SendInput {Down}
    return
  }
  IfInString, Title, %I_visualstudio%
  {
    SendInput {Down}
    return
  }
  
  if hj = 1
  {
    SendInput {Down}
    hj = 0
  } else{
    hj = 1
  } 
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;       j;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#IfWinActive,ahk_class Notepad
{
ctrl & k::
    send {Up}
    return
}

;visual studio select file dialog
#IfWinActive, ahk_class #32770
{
ctrl & k::
    send {Up}
    return 
}

#IfWinActive, SumatraPDF 
{
ctrl & k::
       send {Up}{Up}{Up}{Up} 
       Return 
}
#IfWinActive


;one_note
#IfWinActive, ahk_class  Framework::CFrame
{
ctrl & k::
       send {PgUp}
       return 
}
#IfWinActive

ctrl & k::
  WinGetActiveTitle, Title
  ifInString, Title, %I_mindmanager%
  {
    SendInput {UP}
    return
  }

  ifInString, Title, %I_acrobatreader%
  {
    SendInput {UP}{UP}{UP}
    return
  }

  ;for chm files
  IfWinActive ahk_class HH Parent
  {
    SendInput {UP}
    return
  }
  ;qt creator
  IfWinActive ahk_class Qt5QWindowIcon
  {
    SendInput {UP}
    return
  }
  ;explorer
  IfWinActive ahk_class CabinetWClass
  {
    SendInput {UP}
    return
  }
 ;code blocks
  ifWinActive ahk_class wxWindowClassNR
  {
    SendInput {UP}
    return
  }	
  ifInString, Title, %I_visualstudio%
  {
    SendInput {UP}
    return
  }
  if hc = 1
  {
    SendInput {Up}
    hc = 0
  }else{
    hc = 1
  }
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
;$!space:: send {Alt down}{space down}{Alt up}{space up}
;return
*/

;InputBox, password, Enter Password, (your input will be hidden), hide 
;InputBox, UserInput, Phone Number, Please enter a phone number., , 640, 480
;if ErrorLevel
    ;MsgBox, CANCEL was pressed.
;else
    ;MsgBox, You entered "%UserInput%"
;return

;_______________ Network /internet ___________________
/*
#!PrintScreen::
   ;1.
   Run, explorer ::{7007ACC7-3202-11D1-AAD2-00805FC1270E}
   ;2.
   WinWaitActive, Network Connections
   Send, {Space}

   ;3. & 4.
   ;If the adapter is not the 1st, navigate to it.
   ;For example, without the comment (semi-colon):
   ;    Send, {Right 1}
   ;if it is the 2nd adapter.
   ;    Send, {Right 2}
   ;if it is the 3rd, etc.

   ;5.
   Send, {AppsKey}
   Sleep, 250 ;adjust as needed
   Send, {Down}{Down}
   ;6.
   Send, {Enter}
   ;7.
   WinClose, Network Connections
   return

/*
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ScrollLock::
  Send, {CapsLock Down}
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::ttt::
  SendInput %A_WorkingDir%
  SendInput {Enter}
  SendInput KeyDelay, %A_KeyDelay%
  SendInput {Enter}
  SendInput WindDelay, %A_WinDelay%
  SendInput {Enter}
  SendInput Ip, %A_IPAddress1%
  return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:*b0:sf.::{bs 3}self.
 return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
:o:sf::self
 return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ::;;;:: {ESC}{$}{a}{;}
; return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::c<::{bs 1} cout << 
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;----:*b0:;inc::{bs 4}{#}include <>{left 1}
;return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;:*b0:<em>::</em>{left 5}
;return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
::bek::
  SendInput beekalam
  return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ispersian()
{
 SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  ;MsgBox, %InputLocaleID%
  if InputLocaleID = 0x4290429
  {
    Return 1
  }
  return 0
}




