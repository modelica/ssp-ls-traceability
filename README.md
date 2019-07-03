# Simulation Task Meta-Data Packages

This document specifies the packaging of simulation task meta-data
packages, as a third-party layered standard upon [SSP][] 1.0.  Simulation task
meta-data packages allow the packaging of simulation task meta-data
files together with related system descriptions, models and other
resources using the SSP packaging format.

This is version 0.1.0 of this document. The version number is
to be interpreted according to the [Semantic Versioning Specification
(SemVer) 2.0.0][SemVer2.0.0].

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT",
"SHOULD", "SHOULD NOT", "RECOMMENDED",  "MAY", and "OPTIONAL" in this
document are to be interpreted as described in [RFC 2119][].

All namespaces and reverse domain notation domain names used in this
draft version of this document are subject to change once the draft
is finalized.

[SSP]: https://ssp-standard.org/
[SemVer2.0.0]: http://semver.org/spec/v2.0.0.html
[RFC 2119]: https://www.ietf.org/rfc/rfc2119.txt

## Introduction

The current specification specifies the packaging of simulation task
meta-data files together with all referenced system descriptions,
models, parameters, their meta-data, simulation results and other
resources in SSP 1.0 package files as a layered standard based on SSP
1.0.

By basing the packaging on the SSP standard, it is possible to treat
STMD containing SSP packages as normal SSP packages for use in tools
that do not yet support STMD-based work flows. Furthermore this
approach simplifies the definition of STMD-based packages by reusing
the built-in functionality of the SSP standard.

## SSP 1.0

Any STMD-based package MUST be a valid [SSP 1.0][SSP10] SSP archive.
Inter alia this means that it MUST contain at least one SSD file named
`SystemStructure.ssd` in the root of the archive, which MUST be a valid
system structure description file. In phases of the simulation task
workflow where a proper system structure description has not yet been
created, this CAN be a dummy file containing an otherwise empty system.
Those cases will be recognizable by the content of the STMD file.

[SSP10]: https://ssp-standard.org/publications/SSP10/SystemStructureAndParameterization10.pdf

## STMD File

Any STMD-based package MUST include an STMD XML file under the
`extra/net.pmsf.ssp.stmd/SimulationTask.stmd` name. The file MUST be
a valid STMD file according to the specification below.

A Simulation Task Meta Data file (STMD, file extension .stmd) MUST be a
well-formed XML 1.0 [XML10] file that conforms to the SimulationTask XML
Schema distributed as part of this standard.  The file MUST use the
UTF-8 encoding.

All STMD-specific elements live in the `http://apps.pmsf.net/STMD/SimulationTaskMetaData`
namespace, nicknamed `stmd` in this document.

The root element of an STMD file MUST be a `SimulationTaskMetaData` element,
which gives overall information about the simulation task described in
this STMD file.

The STMD file MUST reference the system structure description that the
simulation task is intended to use through a `System` element with the
attribute `source` providing the URI to the SSD file. The relative URI
resolution mechanisms are the same as for SSP generally, so that the
URI will be resolved against the URI of the STMD file as a base URI.

Hence a reference to the main SSD of an SSP package will be specified
as

`<stmd:System source="../../SystemStructure.ssd"/>`

due to the relative location of the STMD file.

## SMMD

Simulation model meta data for components that are referenced in the
system structure description MAY be provided either inline or through
external references to files placed in the `resources` folder of the
SSP package.

In either case, an annotation with type `net.pmsf.ssp.smmd` MUST be
added to the component in question. The content of the annotation
MUST be an `smmd` element in the `http://apps.pmsf.net/XSD/smmd`
namespace.  If the SMMD content is to be placed inline, then the
content of the `smmd` element MUST be valid SMMD content.  If the
SMMD content is to be referenced externally, then the `smmd` element
MUST be empty, and MUST have an attribute named `source` that provides
the location of the SMMD file as a URI.  If the SMMD meta-data is
packaged inside the SSP archive, then the URI MUST be a relative URI
that is resolved against the SSD file as its base URI, as specified
in the SSP standard for all SSP-relative content addressing.
