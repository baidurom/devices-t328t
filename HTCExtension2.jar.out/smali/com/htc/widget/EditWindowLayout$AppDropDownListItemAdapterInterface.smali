.class public interface abstract Lcom/htc/widget/EditWindowLayout$AppDropDownListItemAdapterInterface;
.super Ljava/lang/Object;
.source "EditWindowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/EditWindowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppDropDownListItemAdapterInterface"
.end annotation


# virtual methods
.method public abstract isEnabled(I)Z
.end method

.method public abstract removeItem(I)V
.end method

.method public abstract setItemDisabled(I)V
.end method

.method public abstract setItemEnabled(I)V
.end method

.method public abstract setListItems(Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setListItems(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
