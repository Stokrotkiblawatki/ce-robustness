from typing import List

import networkx as nx
#from causalgraphicalmodels import CausalGraphicalModel, StructuralCausalModel

#from carla.data.causal_model.synthethic_data import ScmDataset
from carla.data.load_scm import load_scm_equations


class CausalModel:
    def __init__(
        self,
        scm_class: str,
    ):
        pass

    def get_topological_ordering(self, node_type="endogenous"):
        pass

    def get_children(self, node: str) -> set:
        return None

    def get_parents(self, node: str, return_sorted: bool = True):
        return None

    def get_ancestors(self, node: str) -> set:
        return None

    def get_descendents(self, node: str) -> set:
        return None

    def get_non_descendents(self, node: str) -> set:
        return None

    def generate_dataset(self, size: int):
        return None

    def visualize_graph(self, experiment_folder_name=None):
        pass

    @property
    def scm(self):
        return None

    @property
    def cgm(self):
        return None

    @property
    def scm_class(self) -> str:
        return None

    @property
    def structural_equations_np(self) -> dict:
        return None

    @property
    def structural_equations_ts(self) -> dict:
        return None

    @property
    def noise_distributions(self) -> dict:
        return None

    @property
    def exogenous(self) -> List[str]:
        return None

    @property
    def endogenous(self) -> List[str]:
        return None
