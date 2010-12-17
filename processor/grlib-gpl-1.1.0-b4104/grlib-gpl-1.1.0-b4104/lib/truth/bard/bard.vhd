------------------------------------------------------------------------------
--  This file is a part of the GRLIB VHDL IP LIBRARY
--  Copyright (C) 2003 - 2008, Gaisler Research
--  Copyright (C) 2008 - 2010, Aeroflex Gaisler
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
-----------------------------------------------------------------------------
-- Package: 	leon3
-- File:	leon3.vhd
-- Author:	Jiri Gaisler, Gaisler Research
-- Description:	LEON3 types and components
------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

library grlib;
use grlib.amba.all;
library techmap;
use techmap.gencomp.all;

library gaisler;
use gaisler.leon3.all;

package bard is

  constant BARD_VERSION : integer := 0;

  constant PCLOW : integer := 2;

  subtype word is std_logic_vector(31 downto 0);
  subtype pctype is std_logic_vector(31 downto PCLOW);

  type bard_dc_in_type is record
    pc    : pctype;
    inst  : word;
    value : std_logic_vector(31 downto 0);
    -- target signals
    
    fpc : pctype;
    dpc : pctype;
    dinst : word;
    apc : pctype;
    asr1 : std_logic_vector(31 downto 0);
    asr2 : std_logic_vector(31 downto 0);
    epc : pctype;
    ealuo : std_logic_vector(31 downto 0);
    mpc : pctype;
    maddr : std_logic_vector(31 downto 0);
    mdatar : std_logic_vector(31 downto 0);
    mdataw : std_logic_vector(31 downto 0);
    wpc : pctype;
    wdr : std_logic_vector(31 downto 0);
    
    --
    xc_exception : std_ulogic;
    xc_trap_address : pctype;
  end record;

  type bard_dc_out_type is record
    error : std_logic;
  end record;

  component bard_dc is
    generic (
        pclow  : integer range 0 to 2  := 2;
        id : integer range 0 to 3 := 0
    );
    port (
        rstn : in  std_ulogic;
        clk  : in  std_ulogic;
        i : in  bard_dc_in_type;
        o : out bard_dc_out_type
    );
  end  component;

  type bard_ac_in_type is record
    pc    : pctype;
    inst  : word;

    sr1   : std_logic_vector(31 downto 0);
  end record;

  type bard_ac_out_type is record
    dr : std_logic_vector(31 downto 0);
    enable : std_logic;
  end record;

  component bard_ac is
    generic (
        pclow  : integer range 0 to 2  := 2
    );
    port (
        rstn : in  std_ulogic;
        clk  : in  std_ulogic;
        i : in  bard_ac_in_type;
        o : out bard_ac_out_type
    );
  end component;

end;
