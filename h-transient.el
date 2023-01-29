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
(require 'finder)

;;;###autoload (autoload 'h-transient "h-transient" nil t)
(transient-define-prefix h-transient ()
  "Command dispatcher for help commands."
  ["Describe"
   [("m" "Mode"                                   describe-mode)
    ("k" "Key"                                    describe-key)
    ("c" "Key briefly"                            describe-key-briefly)
    ("x" "Command"                                describe-command)
    ("f" "Function"                               describe-function)
    ("v" "Variable"                               describe-variable)
    ("o" "Symbol"                                 describe-symbol)
    ("P" "Package"                                describe-package)]
   [("C-h f" "Faceup"                             faceup-view-buffer)
    ("C-h k" "Keymap"                             describe-keymap)
    ("C-h b" "Key bindings"                       describe-bindings)
    ("C-h P" "Personal bindings"                  describe-personal-keybindings)
    ("C-h m" "Minor mode"                         describe-minor-mode)
    ("C-h i" "Minor mode from indicator"          describe-minor-mode-from-indicator)
    ("C-h s" "Current coding system"              describe-current-coding-system)]]
  [["Show Manual"
    ("r" "Emacs manual"                           info-emacs-manual)
    ("F" "Manual for command"                     Info-goto-emacs-command-node)
    ("K" "Manual for a key"                       Info-goto-emacs-key-command-node)
    ("i" "All installed manuals"                  info)
    ("R" "A specific manual"                      info-display-manual)
    ("S" "Symbol manual"                          info-lookup-symbol)
    ("u" "Unix man page"                          manual-entry)]
   ["Search for"
    ("a" "Commands"                               apropos)
    ("D" "Documentation"                          apropos-documentation)
    ("w" "Command key"                            where-is)
    ("p" "Emacs packages"                         finder-by-keyword)]]
  ["Help"
    ("t" "Start the Emacs tutorial"                help-with-tutorial)
    ("e" "Show recent messages"                   view-echo-area-messages)
    ("l" "Show last 300 input keystrokes"         view-lossage)
    ("." "Show local help at point"               display-local-help)]
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
    ("C-w" "Information about warranty"           describe-no-warranty)]
   ["Internationalization and Coding Systems"
    ("I" "Describe input method"                  describe-input-method)
    ("C" "Describe coding system"                 describe-coding-system)
    ("L" "Describe language environment"          describe-language-environment)
    ("s" "Show current syntax table"              describe-syntax)
    ("H" "Display the HELLO file"                 view-hello-file)
    ("C-h d" "Describe current display table"     describe-current-display-table)]])

(provide 'h-transient)
;;; h-transient.el ends here