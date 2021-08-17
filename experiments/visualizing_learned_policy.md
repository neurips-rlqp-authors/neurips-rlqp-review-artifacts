# Visualizing the learned policy

To understand why the learned policy outperforms the baseline heuristics, we visualized the response of the policy to controlled inputs as recommended by the reviewers.

<img src="https://github.com/neurips-rlqp-authors/neurips-rlqp-review-artifacts/raw/main/experiments/visualize_learned_policy.png" width="600"/>

This figure plots a learned policy output <img src="https://render.githubusercontent.com/render/math?math=\rho"> with fixed <img src="https://render.githubusercontent.com/render/math?math=Ax=z"> + <img src="https://render.githubusercontent.com/render/math?math=1">, <img src="https://render.githubusercontent.com/render/math?math=\rho_{prev} = 0.1">, <img src="https://render.githubusercontent.com/render/math?math=u_i = -10">, and <img src="https://render.githubusercontent.com/render/math?math=u_i = 10"> and varying <img src="https://render.githubusercontent.com/render/math?math=z"> and <img src="https://render.githubusercontent.com/render/math?math=y">. 

From the plot, we see that when <img src="https://render.githubusercontent.com/render/math?math=z"> approaches either bound, the output <img src="https://render.githubusercontent.com/render/math?math=\rho"> increases.  We also observe that with higher <img src="https://render.githubusercontent.com/render/math?math=y">, the policy outputs a higher <img src="https://render.githubusercontent.com/render/math?math=\rho">.  Both of these observations are consistent with the intent and observations behind OSQP's heuristic policy: a high <img src="https://render.githubusercontent.com/render/math?math=\rho"> is desirable when the primal residual is smaller than the dual, and a low <img src="https://render.githubusercontent.com/render/math?math=\rho"> is desirable when the dual is smaller than the primal. 

Based on these insights, we are trying to extract a simple non-learned policy from RLQP. However, the learned policy does not appear to be a simple square root of the ratio of residuals. These results suggest the optimal policy is non-linear and problem dependent.
