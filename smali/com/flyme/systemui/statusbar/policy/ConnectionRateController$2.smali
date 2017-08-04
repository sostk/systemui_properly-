.class Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;
.super Landroid/database/ContentObserver;
.source "ConnectionRateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController$2;->this$0:Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/policy/ConnectionRateController;->updateConnectionRate()V

    .line 176
    return-void
.end method
