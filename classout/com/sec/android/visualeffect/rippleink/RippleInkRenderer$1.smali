.class Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;
.super Ljava/lang/Object;
.source "RippleInkRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .registers 2

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1133
    const-string v0, "RippleInkRenderer"

    const-string v1, "postDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->clearAllEffect()V

    .line 1137
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$000(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$100(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1139
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$200(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1140
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;->this$0:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    # getter for: Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->access$200(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1142
    :cond_2e
    return-void
.end method
