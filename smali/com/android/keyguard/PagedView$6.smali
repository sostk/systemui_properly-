.class Lcom/android/keyguard/PagedView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->animateDragViewToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 2175
    iput-object p1, p0, Lcom/android/keyguard/PagedView$6;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/keyguard/PagedView$6;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v0}, Lcom/android/keyguard/PagedView;->-wrap1(Lcom/android/keyguard/PagedView;)V

    .line 2177
    return-void
.end method
