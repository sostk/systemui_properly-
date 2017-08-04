.class final Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;
.super Landroid/os/Handler;
.source "SlideNoticeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNoticeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/app/SlideNoticeManager;


# direct methods
.method private constructor <init>(Lcom/meizu/common/app/SlideNoticeManager;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->this$0:Lcom/meizu/common/app/SlideNoticeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/app/SlideNoticeManager;Lcom/meizu/common/app/SlideNoticeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/app/SlideNoticeManager;
    .param p2, "x1"    # Lcom/meizu/common/app/SlideNoticeManager$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;-><init>(Lcom/meizu/common/app/SlideNoticeManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->this$0:Lcom/meizu/common/app/SlideNoticeManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    invoke-static {v1, v0}, Lcom/meizu/common/app/SlideNoticeManager;->access$000(Lcom/meizu/common/app/SlideNoticeManager;Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
