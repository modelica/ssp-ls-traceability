# Simulation Task Meta-Data Packages

This document specifies the packaging of simulation task meta-data
packages, as a third-party layered standard upon [SSP][] 1.0.
Simulation task meta-data packages allow the packaging of simulation
task meta-data files together with related system descriptions, models
and other resources using the SSP packaging format.

This is version 0.3.0 of this document. The version number is to be
interpreted according to the [Semantic Versioning Specification (SemVer)
2.0.0][SemVer2.0.0].

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

The root element of an STMD file MUST be a `SimulationTaskMetaData`
element, which gives overall information about the simulation task
described in this STMD file.

The STMD file CAN reference any system structure descriptions that the
simulation task is intended to use through `Resource` elements with the
attribute `source` providing the URI to the SSD file. The relative URI
resolution mechanisms are the same as for SSP generally, so that the
URI will be resolved against the URI of the STMD file as a base URI.

Hence a reference to the main SSD of an SSP package will be specified
as

`<stmd:Resource source="../../SystemStructure.ssd" type="application/x-ssp-definition" kind="system"/>`

due to the relative location of the STMD file.

Simulation model meta data and parameter meta data is referenced inside
the STMD file using either `Resource` records directly if the meta data
is directly relevant, or through `MetaData` elements inside `Resource`
elements if the meta data is only used in a meta data role.

If meta data is intended to be carried in the purely SSP subset of the
SSP package, then the following sections apply.

The MIME type of STMD files is `application/x-stmd-simulationtask`, the
file name extension is `.stmd`.

### SRMD

Simulation resource meta data for components or other resources (e.g.
parameter sets, etc.) can be provided using SRMD files. These files can
be embedded into such resources, where possible, they can be placed
outside the resources and reference the resources to which they apply,
or they can be tied to the resources through the STMD meta-data
mechanisms.

The MIME type for SRMD files is `application/x-srmd-meta-data`, the file
name extension is `.srmd`.

#### Attaching via STMD meta-data mechanism

For SRMD data that is to be tied to the resource through the STMD
meta-data mechanism, the SRMD file is either referenced from or
contained in the `MetaData` elements for the resource.

#### Embedding into FMUs

For FMUs the SRMD file CAN be embedded by placing the SRMD data into a
file named `extra/net.pmsf.ssp.srmd/resourceMetaData.srmd` in the FMU
archive.

#### Embedding into SSPs

For SSPs the SRMD file that applies to the SSP as a whole CAN be
embedded by placing the SRMD data into a file named
`extra/net.pmsf.ssp.srmd/resourceMetaData.srmd` in the SSP archive.

Inside SSPs, additional SRMD files for referenced resources of the SSP
can be specified using the SSPMD referencing mechanism:

An annotation with type `net.pmsf.ssp.sspmd` MUST be added to the
element (e.g. the `Component` element) in question. The content of the
annotation MUST be a `ResourceMetaData` element in the
`http://apps.pmsf.net/SSPMD/SSPMetaData` namespace.

If the SRMD content is to be placed inline, then the content of the
`ResourceMetaData` element MUST be valid SRMD content.  If the SRMD
content is to be referenced externally, then the `ResourceMetaData`
element MUST be empty, and MUST have an attribute named `source` that
provides the location of the SRMD file as a URI.

If the SRMD meta-data is packaged inside the SSP archive, then the URI
MUST be a relative URI that is resolved against the SSD file as its base
URI, as specified in the SSP standard for all SSP-relative content
addressing, unless the `sourceBase` attribute is present and has a value
of `component`, in which case the relative URI is resolved against the
component itself as its base URI, allowing the addressing of meta-data
that is packaged within the component.

#### Placing beside resources

When placing an SRMD file beside (i.e. outside of) the referenced
resources, the SRMD file SHOULD be named like the resource file name,
where possible, with a file name extension of `.srmd`.

The `data` attribute of the SRMD top-level element SHOULD provide a URI
to the resource.
