import sys
import platform
import mimetypes


# These MIME types are missing on our linux dockers. 
# Before running pytest we will add them to mimetypes.

mime_fallbacks = {
    ".ttf": "font/ttf",
    ".otf": "font/otf",
    ".webp": "image/webp",
    ".woff": "font/woff",
    ".woff2": "font/woff2",
    ".xml": "application/xml",
}

for ext, mime in mime_fallbacks.items():
    mimetypes.add_type(mime, ext)