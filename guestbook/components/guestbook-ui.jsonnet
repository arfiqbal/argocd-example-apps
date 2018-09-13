local env = std.extVar("__ksonnet/environments");
local params = std.extVar("__ksonnet/params").components["guestbook-ui"];
[
   {
  "apiVersion": "rbac.authorization.k8s.io/v1",
  "kind": "RoleBinding",
  "metadata": {
    "labels": {
      "applications.argoproj.io/app-name": "argocd-cdp"
    },
    "name": "argocd-server-role-binding"
  },
  "roleRef": {
    "apiGroup": "rbac.authorization.k8s.io",
    "kind": "Role",
    "name": "argocd-server-role"
  },
  "subjects": [
    {
      "kind": "ServiceAccount",
      "name": "argocd-server"
    }
  ]
}
]
