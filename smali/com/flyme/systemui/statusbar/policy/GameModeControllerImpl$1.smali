.class Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;
.super Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-direct {p0, p2}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 43
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-get0(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 44
    check-cast v0, [Ljava/lang/String;

    .line 45
    .local v0, "result":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 46
    aget-object v1, v0, v4

    .line 47
    .local v1, "scene":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-get1(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string/jumbo v2, "GameModeControllerImpl"

    const-string/jumbo v3, "enter game mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v3}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-get3(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V

    .line 42
    .end local v0    # "result":[Ljava/lang/String;
    .end local v1    # "scene":Ljava/lang/String;
    :cond_0
    return-void

    .line 53
    .restart local v0    # "result":[Ljava/lang/String;
    .restart local v1    # "scene":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "GameModeControllerImpl"

    const-string/jumbo v3, "exit game mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v2, v4}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z

    goto :goto_0
.end method
