import argparse
from google.cloud import iam_admin_v1

def create_role(project_id, role_id):
    client = iam_admin_v1.IAMClient()
    parent = f"projects/{project_id}"
    role = iam_admin_v1.Role(
        title="VM Empezar Finalizar",
        included_permissions=["compute.instances.start", "compute.instances.stop"],
        stage=iam_admin_v1.Role.RoleLaunchStage.GA
    )
    request = iam_admin_v1.CreateRoleRequest(parent=parent, role_id=role_id, role=role)
    response = client.create_role(request=request)
    print(f"Rol creado: {response.name}")    

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Crear Rol Personalizado de IAM.")
    parser.add_argument("project_id", help="El ID del Proyecto de Google Cloud")
    parser.add_argument("role_id", help="El ID del Rol Personalizado Creado")

    args = parser.parse_args()

    create_role(args.project_id, args.role_id)
