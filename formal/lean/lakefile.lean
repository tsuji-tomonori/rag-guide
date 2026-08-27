import Lake
open Lake DSL

package «rag-evidence» where
  version := v!"1.0.0"

lean_lib RagEvidence

@[default_target]
lean_exe «rag-evidence-check» where
  root := `Main
