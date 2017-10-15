#!/usr/bin/env python3
""" Module to deal with BMP bitmap image files"""
import sys
import fractal
def dimension(filename):
    with open(filename,'rb') as f:
        magic = f.read(2)
        if magic != b'BM':
            raise ValueError("{} is not BMP file".format(filename))
        f.seek(18)
        width_bytes=f.read(4)
        height_bytes=f.read(4)
        return (_bytes_to_int32(width_bytes),_bytes_to_int32(height_bytes))

def write_greyscale(filename,pixels):
    """
    Creates and writes bitmap greyscale images
    Args:
        filename : Name of BMP bitmap image file
        pixels : Rectangular image stored as  a sequence of rows
    Raises:
        OSError : Filewrite error
    """
    height=len(pixels)
    width=len(pixels[0])
    with open(filename,'wb') as f:
        # BMP Header
        f.write(b'BM')
        size_bookmark=f.tell()
        f.write(b'\x00\x00\x00\x00')
        f.write(b'\x00\x00')
        f.write(b'\x00\x00')
        pixel_offset_bookmark=f.tell()
        f.write(b'\x00\x00\x00\x00')
        # PIXEL HEADER 40 BYTES
        f.write(b'\x28\x00\x00\x00')
        f.write(_int_to_bytes(width))
        f.write(_int_to_bytes(height))
        f.write(b'\x01\x00') #01 number of image planes, 08 bits per pixel
        f.write(b'\x08\x00') #01 number of image planes, 08 bits per pixel
        f.write(b'\x00\x00\x00\x00') # Internal bmp
        f.write(b'\x00\x00\x00\x00') # Internal bmp
        f.write(b'\x00\x00\x00\x00') # Internal bmp
        f.write(b'\x00\x00\x00\x00') # Internal bmp
        f.write(b'\x00\x00\x00\x00') # Internal bmp
        f.write(b'\x00\x00\x00\x00') # Internal bmp
         
        # Color palatte - linear greyscale
        for c in range(256):
            f.write(bytes((c,c,c,0))) #Blue,green,red,zero
         
        pixel_data_bookmark = f.tell()
        for row in reversed(pixels):
            row_data=bytes(row)
            f.write(row_data)
            padding=b'\x00' * ( 4 - (len(row)%4))
            f.write(padding)
        
        #EOF
        eof_bookmark = f.tell()

        # Fill size placeholder
        f.seek(size_bookmark)
        f.write(_int_to_bytes(eof_bookmark))
        f.seek(pixel_offset_bookmark)
        f.write(_int_to_bytes(pixel_data_bookmark))

def _int_to_bytes(i):
    return bytes((i & 0xFF, i >> 8 & 0xFF, i >> 16 & 0xFF, i >> 24 & 0xFF))

def _bytes_to_int32(i):
    return i[0] | (i[1] << 8) | (i[2] << 16) | (i[3] << 24)

if __name__ == "__main__":
    pixels = fractal.mandelbrot(448,256)
    write_greyscale(sys.argv[1],pixels)
    a,b = dimension(sys.argv[1])
    print("Image pixel dimension {0}:{1}".format(a,b))

   
