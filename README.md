# AKTIN CDA mappings: ART-DECOR 2026.1.2

Use this workspace to review and share the dataset-to-CDA mapping for the
Notaufnahmeregister Transitionsversion. The fetched specification, compiled
models and reviewed mapping travel together. Each site adds its own input and
delivery configuration.

```text
ART-DECOR specification -> compiled models -> reviewed mapping bundle
clinical source data + site configuration + reviewed bundle -> CDA documents
```

## Workspace

| Path | What you find there |
|---|---|
| [decor2hl7.json](decor2hl7.json) | Selected release and transaction, plus reviewed dataset additions |
| [spec/2026.1.2/](spec/2026.1.2/) | Frozen source artifacts, dependency closure and pinned validation packages |
| [model/2026.1.2/notaufnahmeregister--60/](model/2026.1.2/notaufnahmeregister--60/) | Dataset and CDA models, proposal, mapping audit and build diagnostics |
| [mapping/2026.1.2/notaufnahmeregister--60/](mapping/2026.1.2/notaufnahmeregister--60/) | Reviewed mapping, identity lock and four review guides |
| [config/](config/) | Reviewed acquisition and target overlays |
| `site/` | Your site's source mappings, identifiers and delivery settings; kept local |
| `test/`, `out/`, `state/` | Local test runs, generated documents and runtime history |

The bundle selects these exact identities:

| Item | Selection |
|---|---|
| ART-DECOR project | `aktin-` |
| Release | `2026.1.2@2026-04-27T18:50:33` |
| Transaction key | `notaufnahmeregister--60` |
| Transaction OID | `2.16.840.1.113883.2.6.60.3.4.60` |
| Transaction effective date | `2026-03-25T00:00:00` |
| Target | CDA |

The [mapping lock](mapping/2026.1.2/notaufnahmeregister--60/mapping-lock.json) ties the reviewed mapping
to the exact compiled dataset and CDA models. Keep those files together when
copying the bundle to another workspace.

## Open the bundle

Install Python 3.10.8 or newer, Git and [Git LFS](https://git-lfs.com/).
Java is needed for rebuilding and independent CDA validation. This bundle is
checked with decor2hl7 commit [`efbcf8c`](https://github.com/randomchars42/decor2hl7/commit/efbcf8c001deccadff62df1758ab24d90f33a7f1).
The following commands create sibling software and workspace checkouts:

```bash
# Install the tested software revision in a virtual environment.
git clone https://github.com/randomchars42/decor2hl7.git
git -C decor2hl7 checkout efbcf8c001deccadff62df1758ab24d90f33a7f1
python3 -m venv decor2hl7/.venv
. decor2hl7/.venv/bin/activate
python3 -m pip install -e ./decor2hl7

# Download the specification and reviewed mapping bundle.
git lfs install
git clone https://github.com/randomchars42/decor2hl7-workspace-2026.1.2.git
cd decor2hl7-workspace-2026.1.2
git lfs pull

# Check the mapping against the included models and frozen source.
decor2hl7 check-cda-mapping
```

Expect `CDA mapping: OK`. Read the listed site requirements before configuring
a deployment. The included `cda.json` uses Git LFS because it exceeds GitHub's
ordinary file-size limit. If the file contains a short LFS pointer, run
`git lfs pull` before using decor2hl7.

A clone opens `main` for review. For a deployment, choose a published mapping
tag with `git switch --detach TAG`, replacing `TAG` with the release you
selected, then run `git lfs pull` again. Tags such as `v1.0.0` identify mapping
revisions within this fixed ART-DECOR release.

## Review the mapping

Open the files under [mapping/2026.1.2/notaufnahmeregister--60/](mapping/2026.1.2/notaufnahmeregister--60/) in this order:

1. [cda-mapping.md](mapping/2026.1.2/notaufnahmeregister--60/cda-mapping.md): remaining review actions.
2. [cda-mapping-details.md](mapping/2026.1.2/notaufnahmeregister--60/cda-mapping-details.md): accepted
   selections, reasons and CDA context.
3. [cda-mapping-trees.md](mapping/2026.1.2/notaufnahmeregister--60/cda-mapping-trees.md): dataset and CDA
   coverage.
4. [cda-mapping-trees-extended.md](mapping/2026.1.2/notaufnahmeregister--60/cda-mapping-trees-extended.md):
   exact concept and template references.

Edit [cda-mapping.json](mapping/2026.1.2/notaufnahmeregister--60/cda-mapping.json) to record a reviewed
mapping decision. Refresh the generated guides and check the result:

```bash
decor2hl7 init-cda-mapping
decor2hl7 check-cda-mapping
```

The [mapping workflow](https://github.com/randomchars42/decor2hl7/blob/efbcf8c001deccadff62df1758ab24d90f33a7f1/docs/user/specification-and-mapping.md)
explains the decision types and review steps.

## Try the authored test cases

Run these commands from the workspace root, using the sibling software checkout
created above. They prepare fictional records and test-site configuration under
`test/mapping/`.

```bash
decor2hl7 setup-test \
  --scenario ../decor2hl7/tests/fixtures/scenarios/2026.1.2/notaufnahmeregister--60/valid-reference-cases \
  --test-dir test/mapping
decor2hl7 test-cda-mapping --test-dir test/mapping
decor2hl7 validate-cda test/mapping/out/*.xml \
  --report test/mapping/out/conformance
```

Expect `PASS` in `test/mapping/out/results.md`. Open `results.json` for
configuration errors, coverage and warnings; inspect `conformance.md` and its
JSON for the independent validation stages. Compare the XML with the fictional
source CSVs. To repeat setup in the same test directory, add `--force` to
`setup-test`.

The [authored scenario](https://github.com/randomchars42/decor2hl7/blob/efbcf8c001deccadff62df1758ab24d90f33a7f1/tests/fixtures/scenarios/2026.1.2/notaufnahmeregister--60/valid-reference-cases/README.md)
describes the cases and their expected branches.

## Configure a site

Start with `decor2hl7 init-site-config`. Edit
`site/2026.1.2/site.json` and the `csv-mapping.json` and
`codes-mapping.json` files under `site/2026.1.2/notaufnahmeregister--60/` for your source data.
Keep local columns, aliases and identifiers in those site files.

Follow [site configuration](https://github.com/randomchars42/decor2hl7/blob/efbcf8c001deccadff62df1758ab24d90f33a7f1/docs/user/site-configuration.md) to
connect the input, then [runtime operation](https://github.com/randomchars42/decor2hl7/blob/efbcf8c001deccadff62df1758ab24d90f33a7f1/docs/user/runtime-operation.md)
to generate and deliver documents. The reviewed bundle can be reused across
sites; each site maintains its own configuration and runtime history.

## Validation notes

The frozen source has known terminology gaps. Read the
[build diagnostics](model/2026.1.2/notaufnahmeregister--60/build-diagnostics.md) and
[reference-profile notes](https://github.com/randomchars42/decor2hl7/blob/efbcf8c001deccadff62df1758ab24d90f33a7f1/docs/reference-transaction.md) alongside
the [open boundaries](https://github.com/randomchars42/decor2hl7/blob/efbcf8c001deccadff62df1758ab24d90f33a7f1/docs/open-boundaries.md). Mapping checks,
CDA conformance and acceptance by the intended receiver have separate results.

## Maintain and publish

`make check` checks the current bundle. `make rebuild` rebuilds from the frozen
source, refreshes the guides while preserving reviewed mapping choices, then
checks the mapping. Make stops at the first failed command.

After a rebuild, compare the model changes and mapping guides. If the existing
lock rejects changed model hashes, review the new bundle before publishing its
replacement. Keep the previous tagged bundle available during that review.

For each mapping release:

1. Review the Git diff, mapping decisions and generated guides.
2. Run the mapping check, authored test cases and CDA validation above.
3. Commit the specification, models, reviewed mapping, guides and supporting
   configuration together. `git lfs status` shows the large model staged for
   LFS.
4. Create an annotated tag such as `v1.0.0`, with notes describing the mapping
   changes, tested software revision and validation limitations. Publish a new
   tag for later changes; retain earlier releases.

The repository ignore rules keep site configuration, runtime output and test
runs local. They include the pinned validation JARs and archives even when a
personal ignore file excludes those file types. Upstream package versions,
checksums and license identifiers are recorded in
[validation/package-lock.json](spec/2026.1.2/validation/package-lock.json).
