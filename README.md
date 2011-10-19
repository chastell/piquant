Piquant
=======

Piquant is a Ruby library for accessing [Raw Salad](https://github.com/CCLab/Raw-Salad) data (mostly Polish governmental budget data at the moment).

Piquant is quite useless for now.

To do
-----

* retrieve views
* retrieve issues
* come up with sane constructors (see `View.[]`)
* make `Piquant.datasets` return actual `Dataset`s
* make `Dataset#views` return actual `View`s
* drop `Configuration` in favour of methods on `Piquant`
* stub out HTTP traffic in specs
* switch to Faraday?
* decouple specs from actual data

---

© MMXI Piotr Szotkowski <chastell@chastell.net>, licensed under AGPL 3 (see LICENCE)
