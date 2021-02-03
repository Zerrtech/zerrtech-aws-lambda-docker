exports.getAllItemsHandler = async (event) => {
    const body = {
        message: "Hello"
    };
    const response = {
        statusCode: 200,
        body: JSON.stringify(body),
    };
    return response;
}
