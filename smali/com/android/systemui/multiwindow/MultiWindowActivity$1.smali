.class Lcom/android/systemui/multiwindow/MultiWindowActivity$1;
.super Ljava/lang/Object;
.source "MultiWindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/MultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/multiwindow/MultiWindowActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowActivity;->-get1(Lcom/android/systemui/multiwindow/MultiWindowActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/MultiWindowActivity$1;->this$0:Lcom/android/systemui/multiwindow/MultiWindowActivity;

    iget-object v1, v1, Lcom/android/systemui/multiwindow/MultiWindowActivity;->loadRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method
