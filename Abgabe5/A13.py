import numpy as np
# import matplotlib.pyplot as plt
import pandas as pd

verteilung = []
uniform = np.random.uniform(0, 1, 100000)


def inv_Energie(E):
    return ((2.7-1)/E)**(1/2.7)


Energy = pd.DataFrame(inv_Energie(uniform))
Energy.to_hdf(' NeutrinoMC.hdf5', key='Energy')
