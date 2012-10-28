lessThan(QT_VERSION, 4.8) {
    error("Arora requires Qt 4.8 or greater")
}

TEMPLATE = subdirs
SUBDIRS  = src


CONFIG += ordered

unix {
    # this is an ugly work around to do .PHONY: doc
    doxygen.target = doc dox
    doxygen.commands = doxygen Doxyfile
    doxygen.depends = Doxyfile
    QMAKE_EXTRA_TARGETS += doxygen
}
