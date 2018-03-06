package com.dorm.pojo;

import java.io.Serializable;  

public class Permission implements Serializable {  
  
    private static final long serialVersionUID = -8025597823572680802L;  
  
    private Integer permissionId;  
    private String permissionName;
    private String permissionDesc;
  
    public Permission() {  
        super();  
    }  
  
    // --------------------------------------------------------------------------------------  
  
    @Override  
    public int hashCode() {  
        final int prime = 31;  
        int result = 1;  
        result = prime * result + ((permissionId == null) ? 0 : permissionId.hashCode());  
        return result;  
    }  
  
    @Override  
    public boolean equals(Object obj) {  
        if (this == obj)  
            return true;  
        if (obj == null)  
            return false;  
        if (getClass() != obj.getClass())  
            return false;  
        Permission other = (Permission) obj;  
        if (permissionId == null) {  
            if (other.permissionId != null)  
                return false;  
        } else if (!permissionId.equals(other.permissionId))  
            return false;  
        return true;  
    }  
  
    // --------------------------------------------------------------------------------------  
  
    public Integer getId() {  
        return permissionId;  
    }  
  
    public void setId(Integer id) {  
        this.permissionId = id;  
    }  
  
    public String getName() {  
        return permissionName;  
    }  
  
    public void setName(String permissionName) {  
        this.permissionName = permissionName;  
    }

	public String getPermissionDesc() {
		return permissionDesc;
	}

	public void setPermissionDesc(String permissionDesc) {
		this.permissionDesc = permissionDesc;
	}  
  
}  
