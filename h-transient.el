;;; h-transient.el --- Transient interface for help commands -*- lexical-binding: t; -*-

;; Copyright (C) 2023 Karim Aziiev <karim.aziiev@gmail.com>

;; Author: Karim Aziiev <karim.aziiev@gmail.com>
;; URL: https://github.com/KarimAziev/h-transient
;; Version: 0.1.0
;; Keywords: help docs
;; Package-Requires: ((emacs "27.1") (compat "28.1.1.0") (transient "0.3.0"))

;; SPDX-License-Identifier: GPL-3.0-or-later

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Transient interface for help commands

;;; Code:


(require 'transient)

;;;###autoload (autoload 'h-transient "h-transient" nil t)
(transient-define-prefix h-transient ()
  "Command dispatcher for help commands."
  [["Show help for"
    ("m" "Major and minor modes"                  describe-mode)
    ("k" "Key"                                    describe-key)
    ("c" "Key briefly"                            describe-key-briefly)
    ("x" "Command"                                describe-command)
    ("f" "Function"                               describe-function)
    ("v" "Variable"                               describe-variable)
    ("o" "Function or variable"                   describe-symbol)]
   ["Search for"
    ("a" "Commands"                               apropos)
    ("D" "Documentation of functions, variables"  apropos-documentation)
    ("b" "All key bindings"                       describe-bindings)
    ("w" "Which key runs a specific command"      where-is)]]
  [["Show Manual"
    ("r" "Emacs manual"                           info-emacs-manual)
    ("F" "Emacs manual for command"               Info-goto-emacs-command-node)
    ("K" "Manual for a key"                       Info-goto-emacs-key-command-node)
    ("i" "All installed manuals"                  info)
    ("R" "A specific manual"                      info-display-manual)
    ("S" "Symbol manual"                          info-lookup-symbol)]
   ["Other Help Commands"
    ("%" "Extending Emacs with external packages" view-external-packages)
    ("p" "Search for Emacs packages"              finder-by-keyword)
    ("P" "Describe a specific Emacs package"      describe-package)
    ("*" "Start the Emacs tutorial"               help-with-tutorial)
    ("^" "Display the quick help buffer."         help-quit-or-quick)
    ("e" "Show recent messages"                   view-echo-area-messages)
    ("l" "Show last 300 input keystrokes"         view-lossage)
    ("." "Show local help at point"               display-local-help)]]
  [["Miscellaneous"
    ("C-a" "About Emacs"                          about-emacs)
    ("C-f" "Emacs FAQ"                            view-emacs-FAQ)
    ("C-n" "News of recent changes"               view-emacs-news)
    ("C-p" "Known problems"                       view-emacs-problems)
    ("C-d" "Debugging Emacs"                      view-emacs-debugging)
    ("C-u" "About the GNU project"                describe-gnu-project)
    ("C-c" "Emacs copying permission"             describe-copying)
    ("C-o" "Distribution information"             describe-distribution)
    ("C-m" "Order printed manuals"                view-order-manuals)
    ("C-t" "Emacs TODO"                           view-emacs-todo)
    ("C-w" "Information about warranty"           describe-no-warranty)]]
  [["Describe"
    ("h" "T[h]eme"                                describe-theme)
    ("t" "Text properties"                        describe-text-properties)
    (">" "Char"                                   describe-char)
    ("O" "Icon"                                   describe-icon)
    ("E" "Face"                                   describe-face)]
   ["Internationalization and Coding Systems"
    ("I" "Describe input method"                  describe-input-method)
    ("C" "Describe coding system"                 describe-coding-system)
    ("L" "Describe language environment"          describe-language-environment)
    ("s" "Show current syntax table"              describe-syntax)
    ("H" "Display the HELLO file"                 view-hello-file)]])

(provide 'h-transient)
;;; h-transient.el ends here