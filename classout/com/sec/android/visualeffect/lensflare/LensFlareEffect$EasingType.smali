.class public final enum Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;
.super Ljava/lang/Enum;
.source "LensFlareEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EasingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

.field public static final enum IN:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

.field public static final enum INOUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

.field public static final enum OUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1105
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    const-string v1, "IN"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->IN:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    const-string v1, "OUT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->OUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    const-string v1, "INOUT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->INOUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    .line 1104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    sget-object v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->IN:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->OUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->INOUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->$VALUES:[Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1104
    const-class v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;
    .registers 1

    .prologue
    .line 1104
    sget-object v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->$VALUES:[Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    return-object v0
.end method
