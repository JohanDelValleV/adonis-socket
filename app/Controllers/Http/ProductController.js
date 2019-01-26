'use strict'

const Product = use('App/Models/Product');

class ProductController {
    async index({ request, response }){
        let products = await Product.all();
        return response.status(200).json(products);
    }

    async store({ request, response }){
        let product = await Product.create(request.all());
        return response.created(product);
    }

    async show({ params, request, response }){
        let { id } = params;
        let product = await Product.findOrFail(id);
        return response.ok(product);
    }

    async update({ params, request, response }){
        let { id } = params;
        let product = await Product.findOrFail(id)
        product.merge(request.all());
        await product.save();
        return response.status(200).json(product);
    }

    async destroy({ params, response }){
        let { id } = params;
        let product = await Product.find(id);
        if (!product) {
            return response.status(404).json({data: 'Resource not found'})
          }

        await product.delete();
        return response.status(204).json(null)
    }

}

module.exports = ProductController
