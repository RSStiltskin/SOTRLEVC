SECTIONS {
  . = 0x10000;
  abc :{
    *(abc)
  }
  . = 0x8000000;
/*El punto significa la direccion de cuenta*/  
  def :{
    *(def)
  }
  .bss :{
    *(.bss)
  }
}
