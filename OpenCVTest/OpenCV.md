# Building OpenCV and additional modules:

## Clone opencv and opencv_contrib

```
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
```

## Generate Solution

Use CMake GUI.

Source: Choose directory where OpenCV is cloned.
Destination: Choose a build directory.

Click Configure.

Add opencv_contrib/modules/ path to `OPENCV_EXTRA_MODULES_PATH`.

Click Generate

Open `.sln` in build directory.

Build Debug and Release configuration.

Build INSTALL in both Debug and Release.


## Using in a project:

### Micrsoft.Cpp.x64.user Property Sheet

Common Properties > User Macros:

`OPENCV_DIR` => `<FullPathTo>\opencv\build\install`

C/C++ General > Additional Includes:

```
$(OPENCV_DIR)\include;
```

Linker > Additional Library directories:

```
$(OPENCV_DIR)\x64\vc15\lib
```

Linker > Input:

Add `.lib` files as needed.