Scientific computing with Numpy
================================================================================


------

What are Numpy and numpy arrays
--------------------------------

:**Python** objects:

    - high-level number objects: integers, floating point
    - containers: lists (costless insertion and append), dictionaries
      (fast lookup)

:**Numpy** provides:

    - extension package to Python for multi-dimensional arrays
    - closer to hardware (efficiency)
    - designed for scientific computation (convenience)

**Why it is useful:** Memory-efficient container that provides fast numerical
operations.


-------

Reference documentation
================================================================================

- On the web: http://docs.scipy.org/
- Interactive help:

  .. sourcecode:: python

     In [5]: np.array?
       String Form:<built-in function array>
       Docstring:
       array(object, dtype=None, copy=True, order=None, ...
       ...

- Looking for something:

  .. code-block:: python

     >>> np.lookfor('create array')    # doctest: +ELLIPSIS
     Search results for 'create array'
     ---------------------------------
     numpy.array
         Create an array.
     numpy.memmap
         Create a memory-map to an array stored in a *binary* file on disk.
 
------

Creating arrays
================================================================================

----

Creating arrays 1 / 5
================================================================================

- **1-D**:

  .. code-block:: python

    >>> a = np.array([0, 1, 2, 3])
    >>> a
    array([0, 1, 2, 3])
    >>> a.ndim
    1
    >>> a.shape
    (4,)
    >>> len(a)
    4

- **2-D, 3-D, ...**:

  .. code-block:: python
    >>> b = np.array([[0, 1, 2], [3, 4, 5]])    # 2 x 3 array
    >>> b
    array([[0, 1, 2],
           [3, 4, 5]])
    >>> b.ndim
    2
    >>> b.shape
    (2, 3)
    >>> len(b)     # returns the size of the first dimension
    2

    >>> c = np.array([[[1], [2]], [[3], [4]]])
    >>> c
    array([[[1],
            [2]],
           [[3],
            [4]]])
    >>> c.shape
    (2, 2, 1)


----

Creating arrays 2 / 5
================================================================================

- Evenly spaced:

  .. code-block:: python

    >>> import numpy as np
    >>> a = np.arange(10) # 0 .. n-1  (!)
    >>> a
    array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    >>> b = np.arange(1, 9, 2) # start, end (exlusive), step
    >>> b
    array([1, 3, 5, 7])

- or by number of points:

  .. code-block:: python
     
    >>> c = np.linspace(0, 1, 6)   # start, end, num-points
    >>> c
    array([ 0. ,  0.2,  0.4,  0.6,  0.8,  1. ])
    >>> d = np.linspace(0, 1, 5, endpoint=False)
    >>> d
    array([ 0. ,  0.2,  0.4,  0.6,  0.8])

----

Creating array 3 / 5
================================================================================

- Arrays of ones:

  .. code-block:: python

      >>> a = np.ones((3, 3))  # reminder: (3, 3) is a tuple
      >>> a
      array([[ 1.,  1.,  1.],
            [ 1.,  1.,  1.],
            [ 1.,  1.,  1.]])

- Arrays of 0:

  .. code-block:: python

      >>> b = np.zeros((2, 2))
      >>> b
      array([[ 0.,  0.],
            [ 0.,  0.]])


----

Creating arrays 4 / 5
================================================================================

- Identity:
  
  .. code-block:: python

      >>> c = np.eye(3)
      >>> c
      array([[ 1.,  0.,  0.],
            [ 0.,  1.,  0.],
            [ 0.,  0.,  1.]])


- Diagonal:

  .. code-block:: python

      >>> d = np.diag(np.array([1, 2, 3, 4]))
      >>> d
      array([[1, 0, 0, 0],
            [0, 2, 0, 0],
            [0, 0, 3, 0],
            [0, 0, 0, 4]])

------

Creating arrays 5 / 5
================================================================================

- Random numbers:

  .. code-block:: python

    >>> a = np.random.rand(4)       # uniform in [0, 1]
    >>> a
    array([ 0.95799151,  0.14222247,  0.08777354,  0.51887998])

    >>> b = np.random.randn(4)      # Gaussian
    >>> b
    array([ 0.37544699, -0.11425369, -0.47616538,  1.79664113])

    >>> np.random.seed(1234)        # Setting the random seed

------

Exercises
================================================================================

- Create the following arrays::

        [[1, 1, 1, 1],
         [1, 1, 1, 1],
         [1, 1, 1, 2],
         [1, 6, 1, 1]]

        [[0, 0, 0, 0],
         [2, 0, 0, 0],
         [0, 3, 0, 0],
         [0, 0, 4, 0]]

*Hint*: Individual array elements can be accessed similarly to a list,
e.g. ``a[1]`` or ``a[1, 2]``.

*Hint*: Examine the docstring for ``diag``.

----

Data types
================================================================================

----

Basic data types
================================================================================


- Different data-types allow us to store data more compactly in memory
- NumPy auto-detects the data-type from the input.


.. code-block:: python

    >>> a = np.array([1, 2, 3])
    >>> a.dtype
    dtype('int64')

    >>> b = np.array([1., 2., 3.])
    >>> b.dtype
    dtype('float64')


----

Specifying data types
================================================================================

- Float

  .. code-block:: python

    >>> c = np.array([1, 2, 3], dtype=float)
    >>> c.dtype
    dtype('float64')

- Complex

  .. code-block:: python

        >>> d = np.array([1+2j, 3+4j, 5+6*1j])
        >>> d.dtype
        dtype('complex128')

- Bool

  .. code-block:: python

        >>> e = np.array([True, False, False, True])
        >>> e.dtype
        dtype('bool')

- Strings

  .. code-block:: python

        >>> f = np.array(['Bonjour', 'Hello', 'Hallo',])
        >>> f.dtype     # <--- strings containing max. 7 letters
        dtype('S7')

-----

Indexing and slicing
================================================================================

----

Indexing
================================================================================


- The items of an array can be accessed and assigned to the same way as
  other Python sequences (e.g. lists)

  .. code-block:: python

      >>> a = np.arange(10)
      >>> a
      array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
      >>> a[0], a[2], a[-1]
      (0, 2, 9)

- For multidimensional arrays, indexes are tuples of integers:

  .. code-block:: python

    >>> a = np.diag(np.arange(3))
    >>> a
    array([[0, 0, 0],
           [0, 1, 0],
           [0, 0, 2]])
    >>> a[1, 1]
    1
    >>> a[2, 1] # third line, second column
    >>> 10

----

Slicing
================================================================================

Arrays, like other Python sequences can also be **sliced**:

.. code-block:: python

    >>> a = np.arange(10)
    >>> a
    array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    >>> a[2:9:3] # [start:end:step]
    array([2, 5, 8])

All three slice components are not required: by default, `start` is 0,
`end` is the last and `step` is 1:

----

Slicing
================================================================================

.. image:: images/numpy_indexing.png
    :align: center
    :width: 65%

----

Exercises
================================================================================

- Create the following arrays (with the correct datatypes)::

        [[0., 0., 0., 0., 0.],
         [2., 0., 0., 0., 0.],
         [0., 3., 0., 0., 0.],
         [0., 0., 4., 0., 0.],
         [0., 0., 0., 5., 0.],
         [0., 0., 0., 0., 6.]]


.. FIXME maybe add something in which people create an array, slice it
   modifies the slice, and view the difference.

----

Copies and views
================================================================================

A slicing operation creates a **view** on the original array, which is
just a way of accessing array data. Thus the original array is not
copied in memory.

**When modifying the view, the original array is modified as well**:

.. code-block:: python

  >>> a = np.arange(10)
  >>> a
  array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  >>> b = a[::2]; b
  array([0, 2, 4, 6, 8])
  >>> b[0] = 12
  >>> b
  array([12,  2,  4,  6,  8])
  >>> a   # (!)
  array([12,  1,  2,  3,  4,  5,  6,  7,  8,  9])

  >>> a = np.arange(10)
  >>> b = a[::2].copy()  # force a copy
  >>> b[0] = 12
  >>> a
  array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])


----

Fancy indexing
================================================================================

Numpy arrays can be indexed with slices, but also with boolean or
integer arrays (**masks**). This method is called *fancy indexing*.
It creates **copies not views**.


.. code-block:: python

  >>> np.random.seed(3)
  >>> a = np.random.random_integers(0, 20, 15)
  >>> a
  array([10,  3,  8,  0, 19, 10, 11,  9, 10,  6,  0, 20, 12,  7, 14])
  >>> (a % 3 == 0)
  array([False,  True, False,  True, False, False, False,  True, False,
          True,  True, False,  True, False, False], dtype=bool)
  >>> mask = (a % 3 == 0)
  >>> extract_from_a = a[mask] # or,  a[a%3==0]
  >>> extract_from_a           # extract a sub-array with the mask
  array([ 3,  0,  9,  6,  0, 12])



----

Fancy indexing with integers
================================================================================

Indexing can be done with an array of integers.

.. code-block:: python

  >>> a = np.arange(10)
  >>> a
  array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  >>> a[[2, 3, 2, 4, 2]]  # note: [2, 3, 2, 4, 2] is a Python list
  array([2, 3, 2, 4, 2])

New values can be assigned with this kind of indexing:

.. code-block:: python

    >>> a[[9, 7]] = -10
    >>> a
    array([  0,   1,   2,   3,   4,   5,   6, -10,   8, -10])

-------

Fancy indexing
================================================================================

.. image:: images/numpy_fancy_indexing.png
      :align: center
      :width: 80%


-------

Operations
================================================================================

----

Element wise operation
================================================================================

  .. code-block:: python

    >>> a = np.array([1, 2, 3, 4])

- Addition

  .. code-block:: python

    >>> a + 1
    array([2, 3, 4, 5])

- Multiplication

  .. code-block:: python

    >>> 2 * a
    array([ 4,  6,  8, 10])

- Division

  .. code-block:: python

    >>> a / 2
    array([ 1,  1,  2, 22])

- Power

  .. code-block:: python

    >>> 2**a
    array([ 2,  4,  8, 16])

----

Comparisons and logical operations
================================================================================

Comparisons:

.. code-block:: python

    >>> a = np.array([1, 2, 3, 4])
    >>> b = np.array([4, 2, 2, 4])
    >>> a == b
    array([False,  True, False,  True], dtype=bool)
    >>> a > b
    array([False, False,  True, False], dtype=bool)

Logical operations:

.. code-block:: python

    >>> a = np.array([1, 1, 0, 0], dtype=bool)
    >>> b = np.array([1, 0, 1, 0], dtype=bool)
    >>> np.logical_or(a, b)
    array([ True,  True,  True, False], dtype=bool)
    >>> np.logical_and(a, b)
    array([ True, False, False, False], dtype=bool)


-----

Basic reductions
================================================================================

Computing sums:

.. code-block:: python

    >>> x = np.array([1, 2, 3, 4])
    >>> np.sum(x)
    10
    >>> x.sum()
    10

Sum by rows and by columns:

.. code-block:: python

    >>> x = np.array([[1, 1], [2, 2]])
    >>> x
    array([[1, 1],
           [2, 2]])
    >>> x.sum(axis=0)   # columns (first dimension)
    array([3, 3])
    >>> x[:, 0].sum(), x[:, 1].sum()
    (3, 3)
    >>> x.sum(axis=1)   # rows (second dimension)
    array([2, 4])
    >>> x[0, :].sum(), x[1, :].sum()
    (2, 4)

-----

And others...
================================================================================

- statistics: 

  - median: ``np.median``
  - standard deviation: ``np.std``

- extrema:

  - min, max: ``np.min``, ``np.max``
  - argmin, argmax: ``np.argmin``, ``np.argmax``

- logical operations: ``np.all``, ``np.any``

----

Example: diffusion simulation using a random walk algorithm
================================================================================


.. image:: images/random_walk.png
    :align: center

What is the typical distance from the origin of a random walker after
``t`` left or right jumps?


.. image:: images/random_walk_schema.png
    :align: center
    :width: 100%


-----


Exercises
================================================================================

- Generate arrays ``[2**0, 2**1, 2**2, 2**3, 2**4]`` and
``a_j = 2^(3*j) - j``

.. FIXME
- Download XXX and load it using::
    >>> data = np.loadtxt('data/populations.txt')
    >>> year, hares, lynxes, carrots = data.T  # trick: columns to variables
- Compute the mean of the different populations over time.

-----

Basic visualisation
================================================================================

-----

Visualizing 2D data
================================================================================

Start by launching IPython in *pylab* mode: ``$ ipython --pylab``

*Matplotlib* is a 2D plotting package. We can import its functions as below:

.. code-block:: python

    >>> import matplotlib.pyplot as plt  # the tidy way

.. code-block:: python

    >>> x = np.linspace(0, 3, 20)
    >>> y = np.linspace(0, 9, 20)
    >>> plt.plot(x, y)       # line plot
    [<matplotlib.lines.Line2D object at ...>]
    >>> plt.plot(x, y, 'o')  # dot plot
    [<matplotlib.lines.Line2D object at ...>]
    >>> plt.show()           # <-- shows the plot (not needed with Ipython)

----


Visualisation 2D arrays
================================================================================

* **2D arrays** (such as images):

.. code-block:: python

    >>> image = np.random.rand(30, 30)
    >>> plt.imshow(image, cmap=plt.cm.gray)    # doctest: +ELLIPSIS
    <matplotlib.image.AxesImage object at ...>
    >>> plt.colorbar()
    <matplotlib.colorbar.Colorbar instance at ...>
    >>> plt.show()


---------

Exercises
================================================================================

- Visualise the evolution of the different population loaded in the previous
  exercise

----

Broadcasting
================================================================================

-----

The idea
================================================================================

* Basic operations on ``numpy`` arrays (addition, etc.) are elementwise

* This works on arrays of the same size.

    | **Nevertheless**, It's also possible to do operations on arrays of different
    | sizes if *Numpy* can transform these arrays so that they all have
    | the same size: this conversion is called **broadcasting**.


-----

An illustration...
================================================================================

.. image:: numpy_broadcasting.png
    :align: center
    :width: 90%


