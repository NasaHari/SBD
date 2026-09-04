Title ""

Controls {
}

IOControls {
	EnableSections
}

Definitions {
	Constant "BaseDoping" {
		Species = "TinActiveConcentration"
		Value = 2.5e+18
	}
	Constant "EpiDoping" {
		Species = "SiliconActiveConcentration"
		Value = 1.4e+16
	}
	Constant "ConDoping" {
		Species = "MagnesiumActiveConcentration"
		Value = 1e+18
	}
	Refinement "Mesh_all" {
		MaxElementSize = ( 10 10 )
		MinElementSize = ( 10 10 )
	}
	Refinement "Mesh_Top" {
		MaxElementSize = ( 10 0.0025 )
		MinElementSize = ( 10 0.0025 )
	}
	Refinement "Mesh_Top2" {
		MaxElementSize = ( 10 0.01 )
		MinElementSize = ( 10 0.01 )
	}
	Refinement "Mesh_Top3" {
		MaxElementSize = ( 10 0.1 )
		MinElementSize = ( 10 0.1 )
	}
	Refinement "Mesh_Top4" {
		MaxElementSize = ( 10 0.5 )
		MinElementSize = ( 10 0.5 )
	}
}

Placements {
	Constant "BaseDoping" {
		Reference = "BaseDoping"
		EvaluateWindow {
			Element = region ["Ga2O3_base"]
		}
	}
	Constant "EpiDoping" {
		Reference = "EpiDoping"
		EvaluateWindow {
			Element = region ["Ga2O3_epi"]
		}
	}
	Constant "ConDoping" {
		Reference = "ConDoping"
		EvaluateWindow {
			Element = region ["GaN_con"]
		}
	}
	Refinement "Placement_all" {
		Reference = "Mesh_all"
		RefineWindow = Rectangle [(0 0) (25 17)]
	}
	Refinement "Placement_Top" {
		Reference = "Mesh_Top"
		RefineWindow = Rectangle [(0 0) (25 0.01)]
	}
	Refinement "Placement_Top2" {
		Reference = "Mesh_Top2"
		RefineWindow = Rectangle [(0 0.01) (25 0.1)]
	}
	Refinement "Placement_Top3" {
		Reference = "Mesh_Top3"
		RefineWindow = Rectangle [(0 0.1) (25 0.5)]
	}
	Refinement "Placement_Top4" {
		Reference = "Mesh_Top4"
		RefineWindow = Rectangle [(0 0.5) (25 5)]
	}
}

