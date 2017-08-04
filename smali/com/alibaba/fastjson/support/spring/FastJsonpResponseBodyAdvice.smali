.class public Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;
.super Ljava/lang/Object;
.source "FastJsonpResponseBodyAdvice.java"

# interfaces
.implements Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/springframework/web/bind/annotation/ControllerAdvice;
.end annotation


# static fields
.field private static final CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final jsonpQueryParamNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "[0-9A-Za-z_\\.]*"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "queryParamNames"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "At least one query param name is required"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->jsonpQueryParamNames:[Ljava/lang/String;

    .line 39
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 37
    goto :goto_0
.end method


# virtual methods
.method public beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Ljava/lang/Object;
    .locals 6
    .param p1, "body"    # Ljava/lang/Object;
    .param p2, "returnType"    # Lorg/springframework/core/MethodParameter;
    .param p3, "selectedContentType"    # Lorg/springframework/http/MediaType;
    .param p5, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p6, "response"    # Lorg/springframework/http/server/ServerHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/springframework/core/MethodParameter;",
            "Lorg/springframework/http/MediaType;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;",
            "Lorg/springframework/http/server/ServerHttpRequest;",
            "Lorg/springframework/http/server/ServerHttpResponse;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, "selectedConverterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    move-result-object v1

    .local v1, "container":Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V

    .line 52
    return-object v1
.end method

.method public beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V
    .locals 8
    .param p1, "bodyContainer"    # Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
    .param p2, "contentType"    # Lorg/springframework/http/MediaType;
    .param p3, "returnType"    # Lorg/springframework/core/MethodParameter;
    .param p4, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p5, "response"    # Lorg/springframework/http/server/ServerHttpResponse;

    .prologue
    const/4 v5, 0x0

    move-object v4, p4

    .line 68
    check-cast v4, Lorg/springframework/http/server/ServletServerHttpRequest;

    invoke-virtual {v4}, Lorg/springframework/http/server/ServletServerHttpRequest;->getServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v2

    .line 69
    .local v2, "servletRequest":Ljavax/servlet/http/HttpServletRequest;
    iget-object v6, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->jsonpQueryParamNames:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_0

    .line 81
    :goto_1
    return-void

    .line 69
    :cond_0
    aget-object v1, v6, v4

    .line 70
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 69
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {p0, p2, p4, p5}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->getContentType(Lorg/springframework/http/MediaType;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lorg/springframework/http/MediaType;

    move-result-object v0

    .line 76
    .local v0, "contentTypeToUse":Lorg/springframework/http/MediaType;
    invoke-interface {p5}, Lorg/springframework/http/server/ServerHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 77
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->setJsonpFunction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getContentType(Lorg/springframework/http/MediaType;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lorg/springframework/http/MediaType;
    .locals 3
    .param p1, "contentType"    # Lorg/springframework/http/MediaType;
    .param p2, "request"    # Lorg/springframework/http/server/ServerHttpRequest;
    .param p3, "response"    # Lorg/springframework/http/server/ServerHttpResponse;

    .prologue
    .line 104
    new-instance v0, Lorg/springframework/http/MediaType;

    const-string/jumbo v1, "application"

    const-string/jumbo v2, "javascript"

    invoke-direct {v0, v1, v2}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
    .locals 1
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 60
    instance-of v0, p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    .end local p1    # "body":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "body":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    goto :goto_0
.end method

.method protected isValidJsonpQueryParam(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public supports(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "returnType"    # Lorg/springframework/core/MethodParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "converterType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    const-class v0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;

    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
