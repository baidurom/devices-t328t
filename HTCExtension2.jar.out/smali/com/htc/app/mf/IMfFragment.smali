.class public interface abstract Lcom/htc/app/mf/IMfFragment;
.super Ljava/lang/Object;
.source "IMfFragment.java"

# interfaces
.implements Lcom/htc/app/mf/IActivityMethods;


# virtual methods
.method public abstract findViewById(Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract finishFragmentInNextPane()V
.end method

.method public abstract finishSelf()V
.end method

.method public abstract getMainActivity()Lcom/htc/app/mf/MfMainActivity;
.end method

.method public abstract getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
.end method

.method public abstract getParent()Lcom/htc/app/mf/IMfFragment;
.end method

.method public abstract getPosition()I
.end method

.method public abstract onNewArguments(Landroid/os/Bundle;)V
.end method

.method public abstract onReceiveMessage(Ljava/lang/Object;)V
.end method

.method public abstract sendMessageToNextPane(Ljava/lang/Object;)V
.end method

.method public abstract sendMessageToPreviousPane(Ljava/lang/Object;)V
.end method

.method public abstract startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startFragmentInCurrentPaneAndStackUp(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
.end method
