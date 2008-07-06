# Copyright (c) 1999, 2001, 2003 Utrecht University (The Netherlands),
# ETH Zurich (Switzerland), Freie Universitaet Berlin (Germany),
# INRIA Sophia-Antipolis (France), Martin-Luther-University Halle-Wittenberg
# (Germany), Max-Planck-Institute Saarbruecken (Germany), RISC Linz (Austria),
# and Tel-Aviv University (Israel).  All rights reserved.
#
# This file is part of CGAL (www.cgal.org); you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public License as
# published by the Free Software Foundation; version 2.1 of the License.
# See the file LICENSE.LGPL distributed with CGAL.
#
# Licensees holding a valid commercial license may use this file in
# accordance with the commercial license agreement provided with the software.
#
# This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
# WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
#
# $URL$
# $Id$
# 
#
# Author(s)     : Geert-Jan Giezeman, Sven Sch�nherr

if test $# -ne 1
then
echo "usage:" >&2
echo "$0 name" >&2
exit 1
fi

nameUC=`echo $1 | tr "[a-z]" "[A-Z]" `
nameLC=`echo $1 | tr "[A-Z]" "[a-z]" `

if test -n "${nameUC}"
then
#append underscore to name
nameUC="${nameUC}_"
nameLC="${nameLC}_"
fi

sed -e "s/XXX_/${nameUC}/g" -e "s/xxx_/${nameLC}/g" <<"EOF" \
        > "${nameLC}assertions.h"
// Replace this remark by a proper copyright notice.
//
// $URL$
// $Id$
// 
//
// Author(s)     : Geert-Jan Giezeman, Sven Sch�nherr

// Generated from script create_assertions.sh

// macro definitions
// =================
// assertions
// ----------


#if defined(CGAL_XXX_NO_ASSERTIONS) || defined(CGAL_NO_ASSERTIONS) \
  || defined(NDEBUG)
#  define CGAL_xxx_assertion(EX) (static_cast<void>(0))
#  define CGAL_xxx_assertion_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_assertion_code(CODE)
#else
#  define CGAL_xxx_assertion(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_assertion_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_assertion_code(CODE) CODE
#  define CGAL_xxx_assertions 1
#endif // CGAL_XXX_NO_ASSERTIONS

#if defined(CGAL_XXX_NO_ASSERTIONS) || defined(CGAL_NO_ASSERTIONS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || defined(NDEBUG)
#  define CGAL_xxx_exactness_assertion(EX) (static_cast<void>(0))
#  define CGAL_xxx_exactness_assertion_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_exactness_assertion_code(CODE)
#else
#  define CGAL_xxx_exactness_assertion(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_exactness_assertion_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_exactness_assertion_code(CODE) CODE
#  define CGAL_xxx_exactness_assertions 1
#endif // CGAL_XXX_NO_ASSERTIONS

#if defined(CGAL_XXX_NO_ASSERTIONS) \
  || defined(CGAL_NO_ASSERTIONS) \
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_assertion(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_assertion_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_assertion_code(CODE)
#else
#  define CGAL_xxx_expensive_assertion(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_assertion_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_assertion_code(CODE) CODE
#  define CGAL_xxx_expensive_assertions 1
#endif // CGAL_XXX_NO_ASSERTIONS

#if defined(CGAL_XXX_NO_ASSERTIONS) || defined(CGAL_NO_ASSERTIONS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_exactness_assertion(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_assertion_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_assertion_code(CODE)
#else
#  define CGAL_xxx_expensive_exactness_assertion(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_exactness_assertion_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::assertion_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_exactness_assertion_code(CODE) CODE
#  define CGAL_xxx_expensive_exactness_assertions 1
#endif // CGAL_XXX_NO_ASSERTIONS


// preconditions
// -------------

#if defined(CGAL_XXX_NO_PRECONDITIONS) || defined(CGAL_NO_PRECONDITIONS) \
  || defined(NDEBUG)
#  define CGAL_xxx_precondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_precondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_precondition_code(CODE)
#else
#  define CGAL_xxx_precondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_precondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_precondition_code(CODE) CODE
#  define CGAL_xxx_preconditions 1
#endif // CGAL_XXX_NO_PRECONDITIONS

#if defined(CGAL_XXX_NO_PRECONDITIONS) || defined(CGAL_NO_PRECONDITIONS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || defined(NDEBUG)
#  define CGAL_xxx_exactness_precondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_exactness_precondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_exactness_precondition_code(CODE)
#else
#  define CGAL_xxx_exactness_precondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_exactness_precondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_exactness_precondition_code(CODE) CODE
#  define CGAL_xxx_exactness_preconditions 1
#endif // CGAL_XXX_NO_PRECONDITIONS

#if defined(CGAL_XXX_NO_PRECONDITIONS) || defined(CGAL_NO_PRECONDITIONS) \
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_precondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_precondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_precondition_code(CODE)
#else
#  define CGAL_xxx_expensive_precondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_precondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_precondition_code(CODE) CODE
#  define CGAL_xxx_expensive_preconditions 1
#endif // CGAL_XXX_NO_PRECONDITIONS

#if defined(CGAL_XXX_NO_PRECONDITIONS) || defined(CGAL_NO_PRECONDITIONS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_exactness_precondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_precondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_precondition_code(CODE)
#else
#  define CGAL_xxx_expensive_exactness_precondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_exactness_precondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::precondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_exactness_precondition_code(CODE) CODE
#  define CGAL_xxx_expensive_exactness_preconditions 1
#endif // CGAL_XXX_NO_PRECONDITIONS


// postconditions
// --------------

#if defined(CGAL_XXX_NO_POSTCONDITIONS) || defined(CGAL_NO_POSTCONDITIONS) \
  || defined(NDEBUG)
#  define CGAL_xxx_postcondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_postcondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_postcondition_code(CODE)
#else
#  define CGAL_xxx_postcondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_postcondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_postcondition_code(CODE) CODE
#  define CGAL_xxx_postconditions 1
#endif // CGAL_XXX_NO_POSTCONDITIONS

#if defined(CGAL_XXX_NO_POSTCONDITIONS) || defined(CGAL_NO_POSTCONDITIONS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || defined(NDEBUG)
#  define CGAL_xxx_exactness_postcondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_exactness_postcondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_exactness_postcondition_code(CODE)
#else
#  define CGAL_xxx_exactness_postcondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_exactness_postcondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_exactness_postcondition_code(CODE) CODE
#  define CGAL_xxx_exactness_postconditions 1
#endif // CGAL_XXX_NO_POSTCONDITIONS

#if defined(CGAL_XXX_NO_POSTCONDITIONS) || defined(CGAL_NO_POSTCONDITIONS) \
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_postcondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_postcondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_postcondition_code(CODE)
#else
#  define CGAL_xxx_expensive_postcondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_postcondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_postcondition_code(CODE) CODE
#  define CGAL_xxx_expensive_postconditions 1
#endif // CGAL_XXX_NO_POSTCONDITIONS

#if defined(CGAL_XXX_NO_POSTCONDITIONS) || defined(CGAL_NO_POSTCONDITIONS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_exactness_postcondition(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_postcondition_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_postcondition_code(CODE)
#else
#  define CGAL_xxx_expensive_exactness_postcondition(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_exactness_postcondition_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::postcondition_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_exactness_postcondition_code(CODE) CODE
#  define CGAL_xxx_expensive_exactness_postconditions 1
#endif // CGAL_XXX_NO_POSTCONDITIONS


// warnings
// --------

#if defined(CGAL_XXX_NO_WARNINGS) || defined(CGAL_NO_WARNINGS) \
  || defined(NDEBUG)
#  define CGAL_xxx_warning(EX) (static_cast<void>(0))
#  define CGAL_xxx_warning_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_warning_code(CODE)
#else
#  define CGAL_xxx_warning(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_warning_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_warning_code(CODE) CODE
#  define CGAL_xxx_warnings 1
#endif // CGAL_XXX_NO_WARNINGS

#if defined(CGAL_XXX_NO_WARNINGS) || defined(CGAL_NO_WARNINGS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || defined(NDEBUG)
#  define CGAL_xxx_exactness_warning(EX) (static_cast<void>(0))
#  define CGAL_xxx_exactness_warning_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_exactness_warning_code(CODE)
#else
#  define CGAL_xxx_exactness_warning(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_exactness_warning_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_exactness_warning_code(CODE) CODE
#  define CGAL_xxx_exactness_warnings 1
#endif // CGAL_XXX_NO_WARNINGS

#if defined(CGAL_XXX_NO_WARNINGS) || defined(CGAL_NO_WARNINGS) \
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_warning(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_warning_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_warning_code(CODE)
#else
#  define CGAL_xxx_expensive_warning(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_warning_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_warning_code(CODE) CODE
#  define CGAL_xxx_expensive_warnings 1
#endif // CGAL_XXX_NO_WARNINGS

#if defined(CGAL_XXX_NO_WARNINGS) || defined(CGAL_NO_WARNINGS) \
  || (!defined(CGAL_XXX_CHECK_EXACTNESS) && !defined(CGAL_CHECK_EXACTNESS))\
  || (!defined(CGAL_XXX_CHECK_EXPENSIVE) && !defined(CGAL_CHECK_EXPENSIVE)) \
  || defined(NDEBUG)
#  define CGAL_xxx_expensive_exactness_warning(EX) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_warning_msg(EX,MSG) (static_cast<void>(0))
#  define CGAL_xxx_expensive_exactness_warning_code(CODE)
#else
#  define CGAL_xxx_expensive_exactness_warning(EX) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__))
#  define CGAL_xxx_expensive_exactness_warning_msg(EX,MSG) \
   ((EX)?(static_cast<void>(0)): ::CGAL::warning_fail( # EX , __FILE__, __LINE__, MSG))
#  define CGAL_xxx_expensive_exactness_warning_code(CODE) CODE
#  define CGAL_xxx_expensive_exactness_warnings 1
#endif // CGAL_XXX_NO_WARNINGS


EOF
