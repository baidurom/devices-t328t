.class interface abstract Lcom/htc/app/mf/IActivityMethods;
.super Ljava/lang/Object;
.source "IActivityMethods.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# virtual methods
.method public abstract onActionModeFinished(Landroid/view/ActionMode;)V
.end method

.method public abstract onActionModeStarted(Landroid/view/ActionMode;)V
.end method

.method public abstract onActivityDispatchKey(Landroid/view/KeyEvent;)V
.end method

.method public abstract onActivityKeyDown(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onActivityKeyUp(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onSearchRequested()Z
.end method

.method public abstract onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end method

.method public abstract registerOnKeyListener(Landroid/view/View;)V
.end method

.method public abstract registerOnTouchListener(Landroid/view/View;)V
.end method

.method public abstract startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end method
