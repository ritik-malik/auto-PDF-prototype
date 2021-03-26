# Auto PDF prototype

This repository contains *prototype* scripts to automate the metric release process, as addressed in the issue : [Automate Metrics Release and Process Improvement #537](https://github.com/chaoss/website/issues/537)

For now, [WG-common](https://github.com/chaoss/wg-common/) has been chosen for metric release, as this is the closest in its resemblance to the guidelines mentioned in [this document](https://docs.google.com/document/d/1chPzgJa49sO_f3wVqp_NLJupSVyKHSVyuFuwzl4m4KI/edit?pli=1#)

## This the [final OUTPUT PDF](output/output.pdf) generated from the scripts

## Steps followed

* Tweaked the [WG-common](https://github.com/chaoss/wg-common/) repository such that it fits the format in [this document](https://docs.google.com/document/d/1chPzgJa49sO_f3wVqp_NLJupSVyKHSVyuFuwzl4m4KI/edit?pli=1#)
* Made some minor changes to adapt it to the automation scripts
* Pushed the changes on local branch

*A point worth metioning is that the [WG guidelines](https://docs.google.com/document/d/1chPzgJa49sO_f3wVqp_NLJupSVyKHSVyuFuwzl4m4KI/edit?pli=1#) are so beautifully build that the automation
scripts are naturally compatible with it, only minor changes are requried*

## Working

* Clone the `working-group` repository [from local branch](https://github.com/ritik-malik/wg-common/tree/abs-to-rel) in the dir `test-env`
* Move all the metrics files from cloned repo in `test-env` along with common `images` dir
* Delete rest of the cloned repo
* Copy all scripts from `scripts` dir to `test-env`
* Call the `generate_pdf.sh` script in `test-env` dir to generate the output PDF
* The `output.pdf` will be located in `output` dir

## Usage

* Set `repository_link` and `repository_name` parameter in `main.sh`
* Run the program : `./main.sh`
* For now the order of metrics is in alphabetical order (will be changed to custom in future)
* The working of PDF generation scripts can be found in the [Microtask repository](https://github.com/ritik-malik/Microtasks)

## References

* [CHAOSS issue](https://github.com/chaoss/website/issues/537)
* [CHAOSS WG-common](https://github.com/chaoss/wg-common/)
* [CHAOSS WG guidelines](https://docs.google.com/document/d/1chPzgJa49sO_f3wVqp_NLJupSVyKHSVyuFuwzl4m4KI/edit?pli=1#)
* [Local branch WG-common](https://github.com/ritik-malik/wg-common/tree/abs-to-rel)
* [PDF generation scripts](https://github.com/ritik-malik/Microtasks)

