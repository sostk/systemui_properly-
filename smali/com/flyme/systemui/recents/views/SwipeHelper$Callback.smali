.class public interface abstract Lcom/flyme/systemui/recents/views/SwipeHelper$Callback;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/recents/views/SwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract canChildBeDismissed(Landroid/view/View;)Z
.end method

.method public abstract canChildBeDragDown(Landroid/view/View;)Z
.end method

.method public abstract getChildAtPosition(Landroid/view/MotionEvent;)Lcom/flyme/systemui/recents/views/TaskView;
.end method

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissed(Landroid/view/View;)V
.end method

.method public abstract onDragDownChanged(Lcom/flyme/systemui/recents/views/TaskView;F)V
.end method

.method public abstract onSnapBackCompleted(Landroid/view/View;)V
.end method

.method public abstract onSwipeChanged(Landroid/view/View;F)V
.end method
