function kind = Unit_getKind(SBMLUnit)
%
%   Unit_getKind 
%             takes an SBMLUnit structure 
%
%             and returns 
%               the kind of the unit as a string
%
%       kind = Unit_getKind(SBMLUnit)

%  Filename    :   Unit_getKind.m
%  Description :
%  Author(s)   :   SBML Development Group <sbml-team@caltech.edu>
%  $Id: Unit_getKind.m 7155 2008-06-26 20:24:00Z mhucka $
%  $Source v $
%
%<!---------------------------------------------------------------------------
% This file is part of SBMLToolbox.  Please visit http://sbml.org for more
% information about SBML, and the latest version of SBMLToolbox.
%
% Copyright 2005-2007 California Institute of Technology.
% Copyright 2002-2005 California Institute of Technology and
%                     Japan Science and Technology Corporation.
% 
% This library is free software; you can redistribute it and/or modify it
% under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation.  A copy of the license agreement is provided
% in the file named "LICENSE.txt" included with this software distribution.
% and also available online as http://sbml.org/software/sbmltoolbox/license.html
%----------------------------------------------------------------------- -->



% check that input is correct
if (~isstruct(SBMLUnit))
    error(sprintf('%s', ...
      'argument must be an SBML Unit structure'));
end;
 
[sbmlLevel, sbmlVersion] = GetLevelVersion(SBMLUnit);

if (~isSBML_Unit(SBMLUnit, sbmlLevel, sbmlVersion))
    error(sprintf('%s\n%s', 'Unit_getKind(SBMLUnit)', 'argument must be an SBML unit structure'));
end;

kind = SBMLUnit.kind;