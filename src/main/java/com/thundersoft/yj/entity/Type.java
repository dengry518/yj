package com.thundersoft.yj.entity;

public class Type {
    private Integer id;

    private String name;

    private Integer parentId;

    private String note;

    private byte isDisplay;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public byte getIsDisplay() {
        return isDisplay;
    }

    public void setIsDisplay(byte isDisplay) {
        this.isDisplay = isDisplay;
    }

    @Override
    public String toString() {
        return "Type{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", parentId=" + parentId +
                ", note='" + note + '\'' +
                ", isDisplay=" + isDisplay +
                '}';
    }
}